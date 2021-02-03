#include "gtest/gtest.h"

#include "project/core/mylib.hpp"

TEST(HelloTest, GetGreet) {
  EXPECT_EQ(SayMyName(), "Nick");
}
