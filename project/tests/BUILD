load("@rules_cc//cc:defs.bzl", "cc_test", "cc_library")

cc_test (
    name = "test1",
    srcs = [
        "test1.cpp",
    ],
    deps = [
        "@gtest//:gtest_main",
        "//project/core:mylib"
    ],
    linkstatic = True
)