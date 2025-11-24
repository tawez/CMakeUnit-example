include(CMakeUnit)

# Arrange
MOCK_FUNCTION(foo)


function(bar)
    foo()
endfunction()


# Assert
EXPECT_CALL_TIMES(foo 0)

# Act
foo()
# Assert
EXPECT_CALL_TIMES(foo 1)

# Act
foo()
# Assert
EXPECT_CALL_TIMES(foo 2)

# Act
bar()
# Assert
EXPECT_CALL_TIMES(foo 3)
