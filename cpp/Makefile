ifeq (${ARCH},64)
	CC = gcc
	CXX = g++
	BUILD_DIR = builddir_64
else ifeq (${ARCH},32)
	CC = gcc -m32
	CXX = g++ -m32
	BUILD_DIR = builddir_32
endif


build:
	CC="$(CC)" CXX="$(CXX)" meson setup $(BUILD_DIR) --wipe
	meson compile -C $(BUILD_DIR)

get_build_dir:
	@echo "${BUILD_DIR}" > ${BUILD_DIR_FILE}