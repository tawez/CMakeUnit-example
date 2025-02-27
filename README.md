# CMakeUnit-example

This is a project to illustrate use case of
[CMakeUnit](https://github.com/tawez/CMakeUnit) module to test CMake code.

This is self-explanatory example, at least this was my intention.  There are
some additional comments in the code to illustrate key concepts.


## Generic example

CMakeUnit is suitable to test dedicated CMake projects as well as to test CMake
code inside existing C/C++ projects.  In example below configuration of the
dedicated CMake project is described.


### Project structure

Only necessary folders and files are included.

```
<PROJECT_ROOT_DIR>
├── CMakeLists.txt
├── cmake
│   └── CMakeUnit.cmake
├── src
│   └── module.cmake
└── tests
    ├── CMakeLists.txt
    └── module
        ├── CMakeLists.txt
        ├── test1.cmake
        └── test2.cmake
```

- `CMakeLists.txt` project entrypoint
- `cmake` folder with CMake modules
- `src` folder with CMake code to test
- `tests` folder with tests

You may organize the code in the way the most suits your needs.  CMakeUnit does
not force anything in this matter.  Readability should be the rule of thumb,
but that's just my opinion.


### Project setup

1.  In CMakeLists.txt

    - include CTest
    - add to CMAKE_MODULE_PATH location of CMakeUnit module
    - add to CMAKE_MODULE_PATH locations of source code to test

    ```cmake
    cmake_minimum_required(VERSION 3.30)
    
    project(my-project)
    
    if (PROJECT_IS_TOP_LEVEL)
       include(CTest)
       list(PREPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/src;${CMAKE_CURRENT_LIST_DIR}/cmake")
       add_subdirectory(tests)
    endif ()
    ```

2.  In tests/CMakeLists.txt

    - add all necessary test suites
    - add test target

    ```cmake
    include(CMakeUnit)
    add_subdirectory(module)
    add_cmakeunit_target(tests)
    ```

3.  In tests/module/CMakeLists.txt

    - add every test that you need

    ```cmake
    add_cmake_test("test 1" test1.cmake)
    add_cmake_test("test 2" test2.cmake)
    ```
