CMAKE_MINIMUM_REQUIRED(VERSION 3.22)

# include the current directory for older versions of CMake
if(CMAKE_VERSION VERSION_LESS "3.7.0")
    set(CMAKE_INCLUDE_CURRENT_DIR ON)
endif()

# enable automoc for Qt applications. Delete otherwise.
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# include Qt5, if needed
find_package(Qt5 COMPONENTS Widgets REQUIRED)

file(GLOB SOURCE *.cpp)

include_directories(${PROJECT_SOURCE_DIR}/include)
add_executable(main ${SOURCE})
target_link_libraries(main Qt5::Widgets)
