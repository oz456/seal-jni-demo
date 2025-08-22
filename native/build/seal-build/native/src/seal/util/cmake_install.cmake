# Install script for directory: /home/penguin/Desktop/SEAL/native/src/seal/util

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SEAL-4.1/seal/util" TYPE FILE FILES
    "/home/penguin/Desktop/SEAL/native/src/seal/util/blake2.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/blake2-impl.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/clang.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/clipnormal.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/common.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/croots.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/defines.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/dwthandler.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/fips202.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/galois.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/gcc.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/globals.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/hash.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/hestdparms.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/iterator.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/locks.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/mempool.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/msvc.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/numth.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/pointer.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/polyarithsmallmod.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/polycore.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/rlwe.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/rns.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/scalingvariant.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/ntt.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/streambuf.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/uintarith.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/uintarithmod.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/uintarithsmallmod.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/uintcore.h"
    "/home/penguin/Desktop/SEAL/native/src/seal/util/ztools.h"
    )
endif()

