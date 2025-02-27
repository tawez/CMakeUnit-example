cmake_minimum_required(VERSION 3.30)

project(
    CMakeUnit-example
    VERSION 0.1.0
    LANGUAGES NONE
)

if (PROJECT_IS_TOP_LEVEL)
    include(CTest)
    list(PREPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/CMakeUnit;${CMAKE_CURRENT_LIST_DIR}/src")
    add_subdirectory(tests)
endif ()
