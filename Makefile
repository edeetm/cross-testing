LANGUAGE ?= rust
ARCH ?= 64

ifeq (${ARCH},64)
	QEMU = qemu-x86_64
else ifeq (${ARCH},32)
	QEMU = qemu-i386
else
	$(error Unsupported ARCH=${ARCH}. Use 32 or 64)
endif

BUILD_DIR_FILE = ${PWD}/build_dir.txt

test:
	@make -C ${LANGUAGE} build ARCH=${ARCH}
	@make -C ${LANGUAGE} get_build_dir ARCH=${ARCH} BUILD_DIR_FILE=${BUILD_DIR_FILE}

	@BUILD_DIR=${LANGUAGE}/$$(cat ${BUILD_DIR_FILE}); \
	for bin in $$(find $$BUILD_DIR -maxdepth 1 -type f -executable); do \
		${QEMU} "$$bin"; \
	done

	@rm ${BUILD_DIR_FILE}
	