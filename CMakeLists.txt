CMAKE_MINIMUM_REQUIRED(VERSION 3.22)
# Define a meaningful name for your project that doesn't include spaces. This
# will be used in multiple locations.
PROJECT(Foo)

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/CMakeModules")
# Define standard installation paths. See /CMakeModules/InstallDirs.cmake
INCLUDE(InstallDirs)

# A prefix for version string information for this project. It is suggested that you
# change this to something simple that won't clash with other programs/libraries
SET(PROJECT_NAME "FooBar")
SET(PROJECT_PREFIX "FB")

# Information about yourself or your company. This information is included in
SET(VENDOR_NAME "Your Company/Personal Name here")
SET(VENDOR_CONTACT "Company Support <support@domain.tld>")

# Set the project version. You probably want to change "PROJECT" to something specific
# in order to avoid bashing CMake namespaces. Also change in the CMakeModules/Version.cmake
# and CMakeModules/CPack.cmake files
SET(PROJECT_VERSION_MAJOR "0")
SET(PROJECT_VERSION_MINOR "0")
SET(PROJECT_VERSION_PATCH "1")
SET(PROJECT_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Define configuration parameters
OPTION(BUILD_DOCS "Generate Doxygen Documentation" ON)

# Build and copy the compile_commands.json file to the root directory
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_custom_target(
    copy-compile-commands ALL
    ${CMAKE_COMMAND} -E copy_if_different
        ${CMAKE_BINARY_DIR}/compile_commands.json
        ${CMAKE_CURRENT_LIST_DIR}
    )

# Rest of the script logic
IF(BUILD_DOCS)
  add_subdirectory(docs)
ENDIF()

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(src)


# Packaging
include(CPackConfig)
