#
# Make a version file that includes the project version and git revision
#
CMAKE_POLICY(PUSH)

# https://cmake.org/cmake/help/v3.1/policy/CMP0054.html
IF(${CMAKE_VERSION} VERSION_GREATER "3.1" OR ${CMAKE_VERSION} VERSION_EQUAL "3.1")
    CMAKE_POLICY(SET CMP0054 NEW)
ENDIF()

# From CMake 3.0.0 CMAKE_<LANG>_COMPILER_ID is AppleClang for OSX machines
# that use clang for compilations
IF(${CMAKE_C_COMPILER_ID} STREQUAL "AppleClang")
    SET(COMPILER_NAME "AppleClang")
ELSEIF(${CMAKE_C_COMPILER_ID} STREQUAL "Clang")
    SET(COMPILER_NAME "LLVM Clang")
ELSEIF(${CMAKE_C_COMPILER_ID} STREQUAL "GNU")
    SET(COMPILER_NAME "GNU Compiler Collection(GCC/G++)")
ELSEIF(${CMAKE_C_COMPILER_ID} STREQUAL "Intel")
    SET(COMPILER_NAME "Intel Compiler")
ELSEIF(${CMAKE_C_COMPILER_ID} STREQUAL "MSVC")
    SET(COMPILER_NAME "Microsoft Visual Studio")
ENDIF()

SET(COMPILER_VERSION "${CMAKE_C_COMPILER_VERSION}")

EXECUTE_PROCESS(
    COMMAND git log -1 --format=%h
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_COMMIT_HASH
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

IF(NOT GIT_COMMIT_HASH)
    MESSAGE(STATUS "Could not find git. Setting the commit hash to 'missing'")
    SET(GIT_COMMIT_HASH "missing")
ENDIF()

CONFIGURE_FILE(
    ${PROJECT_SOURCE_DIR}/CMakeModules/version.h.mk
    ${PROJECT_SOURCE_DIR}/include/version.h
)

CMAKE_POLICY(POP)
