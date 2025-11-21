include(CMakeUnit)

add_subdirectory(generic)
add_subdirectory(assertions)

add_cmakeunit_target(cmake-tests)
