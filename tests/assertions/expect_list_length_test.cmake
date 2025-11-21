include(CMakeUnit)

# Arrange
set(my_list 1 2 3 4)

# Assert
EXPECT_LIST_LENGTH(my_list LT 5)
EXPECT_LIST_LENGTH(my_list LE 4)
EXPECT_LIST_LENGTH(my_list LE 5)
EXPECT_LIST_LENGTH(my_list EQ 4)
EXPECT_LIST_LENGTH(my_list GE 4)
EXPECT_LIST_LENGTH(my_list GE 3)
EXPECT_LIST_LENGTH(my_list GT 3)

EXPECT_LIST_LENGTH(my_list NE 3)
