use std::collections::HashMap;

pub enum LibsqlValue {
    Integer(i64),
    Real(f64),
    Text(String),
    Blob(Vec<u8>),
    Null,
}

pub struct LibsqlParams {
    pub positional: Option<Vec<LibsqlValue>>,
    pub named: Option<HashMap<String, LibsqlValue>>,
}

impl From<LibsqlParams> for libsql::params::Params {
    fn from(val: LibsqlParams) -> Self {
        let positional_params = val
            .positional
            .as_ref()
            .map(|params| {
                params
                    .iter()
                    .map(|s| match &s {
                        LibsqlValue::Integer(i) => libsql::Value::Integer(*i),
                        LibsqlValue::Real(f) => libsql::Value::Real(*f),
                        LibsqlValue::Null => libsql::Value::Null,
                        LibsqlValue::Blob(b) => libsql::Value::Blob(b.to_vec()),
                        LibsqlValue::Text(t) => libsql::Value::Text(t.to_string()),
                    })
                    .collect::<Vec<_>>()
            })
            .unwrap_or_default();

        let named_params = val
            .named
            .as_ref()
            .map(|params| {
                params
                    .iter()
                    .map(|(k, v)| match &v {
                        LibsqlValue::Integer(i) => (k.clone(), libsql::Value::Integer(*i)),
                        LibsqlValue::Real(f) => (k.clone(), libsql::Value::Real(*f)),
                        LibsqlValue::Null => (k.clone(), libsql::Value::Null),
                        LibsqlValue::Blob(b) => (k.clone(), libsql::Value::Blob(b.to_vec())),
                        LibsqlValue::Text(t) => (k.clone(), libsql::Value::Text(t.to_string())),
                    })
                    .collect::<Vec<_>>()
            })
            .unwrap_or_default();

        match (positional_params.is_empty(), named_params.is_empty()) {
            (false, true) => libsql::params::Params::Positional(positional_params),
            (true, false) => libsql::params::Params::Named(named_params),
            _ => libsql::params::Params::None,
        }
    }
}
