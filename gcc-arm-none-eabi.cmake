set(CMAKE_SYSTEM_NAME      Generic)
set(CMAKE_SYSTEM_PROCESSOR     ARM)

set(TOOLCHAIN_PREFIX arm-none-eabi-)

get_filename_component(ARM_TOOLCHAIN_DIR ${CMAKE_BINARY_DIR}/sdk/gcc-arm-none-eabi DIRECTORY)

# Configure cross-compiler toolchain
SET(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc CACHE FILEPATH "ARM C Compiler")
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER} CACHE FILEPATH "ARM Assembler")
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++ CACHE FILEPATH "ARM C++ Compiler")

set(CMAKE_OBJCOPY ${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}objcopy CACHE INTERNAL "objcopy tool")
set(CMAKE_SIZE_UTIL ${ARM_TOOLCHAIN_DIR}/${TOOLCHAIN_PREFIX}size CACHE INTERNAL "size tool")

set(CMAKE_SYSROOT ${ARM_TOOLCHAIN_DIR}/../arm-none-eabi)
set(CMAKE_FIND_ROOT_PATH ${BINUTILS_PATH})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
