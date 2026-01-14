include(CMakeUnit)


# Arrange
set(my_list 1 2 3 4)
set(empty_list)

# Act
list(APPEND my_list "Ala Makota")

# Assert
EXPECT_LIST_EQ("${my_list}" 1 2 3 4 "Ala Makota")

EXPECT_LIST_EQ("${empty_list}")
