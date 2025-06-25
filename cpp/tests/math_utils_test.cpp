#include <gtest/gtest.h>
#include "math_utils.h"

TEST(MathUtilsTest, Add) {
    EXPECT_EQ(add(2, 3), 5);
    EXPECT_EQ(add(-1, 1), 0);
}

TEST(MathUtilsTest, Multiply) {
    EXPECT_EQ(multiply(3, 4), 12);
    EXPECT_EQ(multiply(-2, 3), -6);
}
