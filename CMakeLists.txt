cmake_minimum_required(VERSION 3.16)

project(helloworld VERSION 1.0.1 LANGUAGES CXX C)


set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "-g -ggdb -O0")
set(CMAKE_VERBOSE_MAKEFILE true)

find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Widgets)
qt_standard_project_setup()

qt_wrap_ui(UISRCS hello.ui)
qt_add_executable(helloworld
    ${UISRCS}

    mainc.c
    maincxx.cpp

)

target_link_libraries(helloworld PRIVATE Qt6::Widgets)

set_target_properties(helloworld PROPERTIES
    WIN32_EXECUTABLE ON
    MACOSX_BUNDLE ON
)
