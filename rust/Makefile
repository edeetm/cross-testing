ifeq (${ARCH},64)
    TARGET = x86_64-unknown-linux-gnu
else ifeq (${ARCH},32)
    TARGET = i686-unknown-linux-gnu
endif


build:
	@cargo test --no-run --target ${TARGET}

get_build_dir:
	@echo "target/$(TARGET)/debug/deps" > ${BUILD_DIR_FILE}