cmake_minimum_required(VERSION 3.10)
project(sealwrapper)

set(CMAKE_CXX_STANDARD 17)

# Set path to SEAL source
set(SEAL_DIR "$ENV{HOME}/Desktop/SEAL")
set(JAVA_HOME "$ENV{JAVA_HOME}")

# JNI + SEAL headers
include_directories(
    ${JAVA_HOME}/include
    ${JAVA_HOME}/include/linux
)

# Add SEAL as subdirectory (will compile SEAL)
add_subdirectory(${SEAL_DIR} ${CMAKE_BINARY_DIR}/seal-build)

# Add your native wrapper
add_library(sealwrapper SHARED seal_wrapper.cpp)

# Link your wrapper with SEAL
target_link_libraries(sealwrapper SEAL::seal)

