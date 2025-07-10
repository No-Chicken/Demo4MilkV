# Specify the cross-compilation toolchain
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(SDK_PATH "/home/kingham/Projects/git_projects/duo-buildroot-sdk-v2")

# Specify the compiler paths
set(CMAKE_C_COMPILER ${SDK_PATH}/host-tools/gcc/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${SDK_PATH}/host-tools/gcc/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++)

# Specify the sysroot (if available)
set(CMAKE_SYSROOT ${SDK_PATH}/buildroot/output/milkv-duos-glibc-arm64-sd/host/aarch64-buildroot-linux-gnu/sysroot)

# Add paths to find libraries and includes
set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)