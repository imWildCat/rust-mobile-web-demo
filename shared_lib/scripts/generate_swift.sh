#!/bin/sh
cargo run -p uniffi-bindgen -- generate src/shared_lib.udl --language swift --out-dir tmp/
