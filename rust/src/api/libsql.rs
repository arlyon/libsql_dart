use crate::utils::result::ConnectResult;
use libsql::{Builder, Connection, Database, Statement, Transaction};
use std::{collections::HashMap, sync::OnceLock, time::Duration};
use tokio::sync::Mutex;
use uuid::Uuid;

use super::connection::LibsqlConnection;

pub static DATABASE_REGISTRY: OnceLock<Mutex<HashMap<String, (Database, Connection)>>> =
    OnceLock::new();
pub static STATEMENT_REGISTRY: OnceLock<Mutex<HashMap<String, Statement>>> = OnceLock::new();
pub static TRANSACTION_REGISTRY: OnceLock<Mutex<HashMap<String, Transaction>>> = OnceLock::new();

#[flutter_rust_bridge::frb(init)]
pub async fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}

pub enum LibsqlOpenFlags {
    ReadOnly,
    ReadWrite,
    Create,
}

pub struct ConnectArgs {
    pub url: String,
    pub auth_token: Option<String>,
    pub sync_url: Option<String>,
    pub sync_interval_seconds: Option<u64>,
    pub encryption_key: Option<String>,
    pub read_your_writes: Option<bool>,
    pub open_flags: Option<LibsqlOpenFlags>,
}

pub async fn connect(args: ConnectArgs) -> Result<ConnectResult, String> {
    let database = if let Some(sync_url) = args.sync_url {
        let connector = hyper_rustls::HttpsConnectorBuilder::new()
            .with_webpki_roots()
            .https_or_http()
            .enable_http1()
            .build();

        let mut builder = Builder::new_remote_replica(
            args.url,
            sync_url,
            args.auth_token.unwrap_or("".to_string()),
        )
        .connector(connector);

        if let Some(interval) = args.sync_interval_seconds {
            builder = builder.sync_interval(Duration::from_secs(interval))
        }

        if let Some(key) = args.encryption_key {
            builder = builder.encryption_config(libsql::EncryptionConfig::new(
                libsql::Cipher::Aes256Cbc,
                key.as_bytes().to_vec().into(),
            ));
        }

        builder = builder.read_your_writes(args.read_your_writes.unwrap_or(true));

        log::info!("starting connect");

        builder.build().await
    } else if args.url.starts_with("libsql://")
        || args.url.starts_with("http://")
        || args.url.starts_with("https://")
    {
        let connector = hyper_rustls::HttpsConnectorBuilder::new()
            .with_webpki_roots()
            .https_or_http()
            .enable_http1()
            .build();

        Builder::new_remote(args.url, args.auth_token.unwrap_or("".to_string()))
            .connector(connector)
            .build()
            .await
    } else {
        let mut builder = Builder::new_local(args.url).flags(match args.open_flags {
            Some(LibsqlOpenFlags::ReadOnly) => libsql::OpenFlags::SQLITE_OPEN_READ_ONLY,
            Some(LibsqlOpenFlags::ReadWrite) => libsql::OpenFlags::SQLITE_OPEN_READ_WRITE,
            Some(LibsqlOpenFlags::Create) => libsql::OpenFlags::SQLITE_OPEN_CREATE,
            None => libsql::OpenFlags::default(),
        });

        if let Some(key) = args.encryption_key {
            builder = builder.encryption_config(libsql::EncryptionConfig::new(
                libsql::Cipher::Aes256Cbc,
                key.as_bytes().to_vec().into(),
            ));
        }

        builder.build().await
    }.map_err(|e| "offline")?;

    let conn = database.connect().expect("able to connect to db");
    let db_id = Uuid::new_v4().to_string();
    DATABASE_REGISTRY
        .get_or_init(Default::default)
        .lock()
        .await
        .insert(db_id.clone(), (database, conn));
    Ok(ConnectResult {
        connection: LibsqlConnection { db_id },
    })
}

#[cfg(test)]
mod test {
    use libsql::Builder;

    use super::{ConnectArgs, connect};

    #[tokio::test]
    async fn smoke_test() {
        let tmp = tempdir::TempDir::new("libsql_test").unwrap();

        let conn = connect(ConnectArgs{
            auth_token: Some("eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3NDQzNTc4MzAsImlkIjoiZjQ1MjdjNDYtOWYzMC00OTIxLWI1M2EtOGZiNjFlMDE2NzA0IiwicmlkIjoiZmY2ZmJlNTktZDNjMC00MzU0LWJjYTQtNzg5OTRmOGM3NzlmIn0.qh_31TEWOVikVyvdKFWlMQZoXKL-OmFp1ETWZGaDplgKgLx9XUafpv9icWVoxHJT4Q9Yih82bRBiEhbGtMKmCg".to_string()),
            encryption_key: None,
            open_flags: None,
            read_your_writes: None,
            sync_interval_seconds: Some(5),
            sync_url: Some("libsql://fancy-terry-arlyon.aws-eu-west-1.turso.io".to_string()),
            url: tmp.path().join("db").to_string_lossy().to_string(),
        }).await;
    }
}
