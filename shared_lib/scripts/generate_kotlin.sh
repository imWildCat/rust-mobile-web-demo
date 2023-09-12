#!/bin/sh
cargo run -p uniffi-bindgen -- generate src/shared_lib.udl --language kotlin --out-dir ../apps/RustKotlinDemo/app/src/main/java
# replace out file `return "uniffi_SharedLib"` to `return "sharedlib"``, including return
sed -i '' 's/return "uniffi_SharedLib"/return "sharedlib"/g' ../apps/RustKotlinDemo/app/src/main/java/uniffi/SharedLib/SharedLib.kt
