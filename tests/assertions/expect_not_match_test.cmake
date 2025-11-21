include(CMakeUnit)

# Arrange
set(var1 Ala)
set(var2 Makota)
set(var3 var2)

# Assert
EXPECT_NOT_MATCH(${var1} "^.A.*")
EXPECT_NOT_MATCH(${var2} "(ta){2}$")
EXPECT_NOT_MATCH(${${var3}} "Ala")
