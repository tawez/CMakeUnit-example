include(CMakeUnit)


# Arrange
MOCK_FUNCTION(foo)

function(bar)
    foo(Makota)
endfunction()

# Act
foo()
foo(1 2 "3;4")
foo(Ala)
bar()

# Assert
EXPECT_CALL_WITH(foo 1)
EXPECT_CALL_WITH(foo 2 1 2 "3;4")
EXPECT_CALL_WITH(foo 2 1 2 3 4)
EXPECT_CALL_WITH(foo 3 Ala)
EXPECT_CALL_WITH(foo 4 Makota)
