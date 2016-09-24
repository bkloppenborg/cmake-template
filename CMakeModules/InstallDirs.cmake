#
# Set installation paths relative to CMAKE_INSTALL_PREFIX
#

# Executables
if(NOT DEFINED PROJECT_INSTALL_BIN_DIR)
  set(PROJECT_INSTALL_BIN_DIR "bin" CACHE PATH "Installation path for executables")
endif()

# Libraries
if(NOT DEFINED PROJECT_INSTALL_LIB_DIR)
  set(PROJECT_INSTALL_LIB_DIR "lib" CACHE PATH "Installation path for libraries")
endif()

# Header files
if(NOT DEFINED PROJECT_INSTALL_INC_DIR)
  set(PROJECT_INSTALL_INC_DIR "include" CACHE PATH "Installation path for headers")
endif()

# Data files
if(NOT DEFINED PROJECT_INSTALL_DATA_DIR)
  set(PROJECT_INSTALL_DATA_DIR "share/${PROJECT_NAME}" CACHE PATH "Installation path for data files")
endif()

# Documentation
if(NOT DEFINED PROJECT_INSTALL_DOC_DIR)
  set(PROJECT_INSTALL_DOC_DIR "${PROJECT_INSTALL_DATA_DIR}/doc" CACHE PATH "Installation path for documentation")
endif()

if(NOT DEFINED PROJECT_INSTALL_EXAMPLE_DIR)
  set(PROJECT_INSTALL_EXAMPLE_DIR "${PROJECT_INSTALL_DATA_DIR}/examples" CACHE PATH "Installation path for examples")
endif()

# Man pages
if(NOT DEFINED PROJECT_INSTALL_MAN_DIR)
  set(PROJECT_INSTALL_MAN_DIR "${PROJECT_INSTALL_DATA_DIR}/man" CACHE PATH "Installation path for man pages")
endif()

# CMake files
if(NOT DEFINED PROJECT_INSTALL_CMAKE_DIR)
  set(PROJECT_INSTALL_CMAKE_DIR "${PROJECT_INSTALL_DATA_DIR}/cmake" CACHE PATH "Installation path for CMake files")
endif()
