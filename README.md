# CMakeUnit-example

A project that illustrates how you can use [CMakeUnit](https://github.com/tawez/CMakeUnit) to test
CMake code.

This is (or at least should be) a self-explanatory example.


## Examples in this project

1. [generic](tests/generic)  
   Examples illustrating key concepts behind CMakeUnit

2. [assertions](tests/assertions)  
   Examples illustrating usage of CMakeUnit assertions 

3. [mocks](tests/mocks)  
   Examples illustrating usage of CMakeUnit mocks

4. [set](tests/set)  
   Example of how to test custom macro


## Project setup

In `CMakeLists.txt` do the following

- include [CTest][cmake::CTest]
- add the location of CMakeUnit to the [CMAKE_MODULE_PATH][cmake::CMAKE_MODULE_PATH] (see the next 
  section)
- optionally add the location of the source code to test to the
  [CMAKE_MODULE_PATH][cmake::CMAKE_MODULE_PATH] 


### Add CMakeUnit to your project

There are at least three ways to add CMakeUnit to your project:

1. Add CMakeUnit using `FetchContent` and add CMakeUnit source folder to
   [CMAKE_MODULE_PATH][cmake::CMAKE_MODULE_PATH] (see [CMakeLists.txt](CMakeLists.txt)).

2. Add CMakeUnit as a git submodule and add path to CMakeUnit root folder to
   [CMAKE_MODULE_PATH][cmake::CMAKE_MODULE_PATH]

   ```CMake
   list(PREPEND CMAKE_MODULE_PATH "path/to/CMakeUnit")
   ```

3. Add a copy of [CMakeUnit.cmake][cmakeunit::CMakeUnit.cmake] to the folder of your choice and add 
   this folder to [CMAKE_MODULE_PATH][cmake::CMAKE_MODULE_PATH]

   ```CMake
   list(PREPEND CMAKE_MODULE_PATH "path/to/folder")
   ```


### Project structure

You may organize the code in the way the most suits your needs.  CMakeUnit does
not force anything in this matter.  Readability should be the rule of thumb.


[cmake::CMAKE_MODULE_PATH]: https://cmake.org/cmake/help/latest/variable/CMAKE_MODULE_PATH.html
[cmakeunit::CMakeUnit.cmake]: https://github.com/tawez/CMakeUnit/blob/main/CMakeUnit.cmake
[cmake::CTest]: https://cmake.org/cmake/help/latest/module/CTest.html
