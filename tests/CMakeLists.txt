include(CMakeUnit)

add_subdirectory(generic)
add_subdirectory(assertions)
add_subdirectory(mocks)
add_subdirectory(set)

add_cmakeunit_target(cmake-tests)
