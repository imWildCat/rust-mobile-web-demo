#!/bin/sh
cargo run -p uniffi-bindgen -- generate src/shared_lib.udl --language kotlin --out-dir ../apps/RustKotlinDemo/app/src/main/java
