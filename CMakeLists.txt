cmake_minimum_required(VERSION 3.30)

project(
    CMakeUnit-example
    VERSION 0.1.0
    LANGUAGES NONE
)

include(FetchContent)

FetchContent_Declare(
    cmakeunit
    GIT_REPOSITORY "https://github.com/tawez/CMakeUnit.git"
    GIT_TAG "5d351d7458ca61fded5e4f837372efb2ccc30028"
    UPDATE_DISCONNECTED ON
)

FetchContent_MakeAvailable(cmakeunit)


list(PREPEND CMAKE_MODULE_PATH "${cmakeunit_SOURCE_DIR};${CMAKE_CURRENT_LIST_DIR}/src")

include(CTest)
add_subdirectory(tests)
