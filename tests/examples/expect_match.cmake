include(CMakeUnit)

# Arrange
set(var1 Ala)
set(var2 Makota)
set(var3 var2)

# Assert
EXPECT_MATCH(${var1} ".*a$")
EXPECT_MATCH(${var2} "^M.+a$")
EXPECT_MATCH(${${var3}} "ta$")
