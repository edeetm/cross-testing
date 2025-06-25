# Cross-Testing
This project is a POC for cross compilation and running tests on different architectures (32bit and 64bit).

## How to use
```bash
LANGUAGE=[rust|cpp] ARCH=[32|64] make test
```

## Notes
#### Download
1. rust
2. qemu-user
3. gcc and g++ (for 32b and 64b)
4. gtest (for 32b and 64b)
#### run
```bash
rustup target add i686-unknown-linux-gnu
rustup target add x86_64-unknown-linux-gnu
```
