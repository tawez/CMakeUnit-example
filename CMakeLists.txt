cmake_minimum_required(VERSION 3.30)

project(
    CMakeUnit-example
    VERSION 0.1.0
    LANGUAGES NONE
)

if (PROJECT_IS_TOP_LEVEL)
    include(CTest)
    include(FetchContent)

    FetchContent_Declare(
        cmakeunit
        GIT_REPOSITORY "https://github.com/tawez/CMakeUnit.git"
        GIT_TAG "0397229da40bb46363e7ed244f310e3e3db7ee4d"
        UPDATE_DISCONNECTED ON
    )
    FetchContent_MakeAvailable(cmakeunit)

    list(PREPEND CMAKE_MODULE_PATH "${cmakeunit_SOURCE_DIR};${CMAKE_CURRENT_LIST_DIR}/src")

    add_subdirectory(tests)
endif ()
