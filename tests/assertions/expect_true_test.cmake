include(CMakeUnit)

# Arrange
set(var1 ON)
set(var2 1)
set(var3 var2)

# Assert
EXPECT_TRUE(true)
EXPECT_TRUE(ON)
EXPECT_TRUE(${var1})
EXPECT_TRUE(${var2})
EXPECT_TRUE(${${var3}})
