# CMake Template

This project is a template which provides project structure and build tools for
modern, cross-platform C/C++ software development. The project uses the CMake
build system and provides pre-configured instances of versioning, documentation,
testing, and packaging tools.

| Component              | Implemented Using           |
|------------------------|-----------------------------|
| Build System           | CMake                       |
| Version Identification | CMakeModules/Version.cmake  |
| Documentation          | Doxygen and graphviz        |
| Testing                | Google Test                 |
| Packaging              | CPack                       |
 
# Prerequisites

## Debian-based Distributions

    sudo apt-get install cmake git doxygen graphviz build-essential
    
    # optionally
    sudo apt-get install cmake-curses-gui
