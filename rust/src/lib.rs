#![deny(
    clippy::unwrap_used,
    // clippy::expect_used,
    clippy::panic
)]

pub mod api;
mod frb_generated;
pub mod utils;
