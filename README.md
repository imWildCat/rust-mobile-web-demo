# Rust Mobile / Web Demo

## Get Started

### Install Rust

<https://rustup.rs/>

### Android

```bash
# prepare rust toolchain
rustup target add aarch64-linux-android x86_64-linux-android i686-linux-android armv7-linux-androideabi
```

```bash
# generate kotlin API
pushd shared_lib && scripts/generate_kotlin.sh && popd
```

```bash
# build android libs
pushd apps/RustKotlinDemo && ./gradlew cargoBuild --info && popd
```

Open `apps/RustKotlinDemo` in Android Studio and run the app.

### iOS

```bash
# prepare rust toolchain
rustup target add aarch64-apple-ios x86_64-apple-ios aarch64-apple-ios-sim
```

```bash
# generate swift API
pushd shared_lib && scripts/generate_swift.sh && popd
```

```bash
# build for iOS simulator (Apple Silicon)
pushd shared_lib && scripts/build_for_ios_simulator.sh && popd
```

Open `apps/DemoRustSwiftApp/DemoRustSwiftApp.xcodeproj` and run the app.

### Build for Web

#### Install node.js and pnpm

<https://nodejs.org/en>

<https://pnpm.io/>

#### Build and run the web demo

```bash
cd apps/web-demo && pnpm install && pnpm run build && pnpm run serve
```

