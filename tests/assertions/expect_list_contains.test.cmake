include(CMakeUnit)


# Arrange
set(my_list 1 2 3 4 "Ala Makota")
set(expected 4 2)

# Assert
EXPECT_LIST_CONTAINS("${my_list}")

EXPECT_LIST_CONTAINS("${my_list}" 1)

EXPECT_LIST_CONTAINS("${my_list}" 2 3)

EXPECT_LIST_CONTAINS("${my_list}" 4 2 1 "Ala Makota")

EXPECT_LIST_CONTAINS("${my_list}" ${expected} "Ala Makota")
