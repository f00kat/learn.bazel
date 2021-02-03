load("@rules_cc//cc:defs.bzl", "cc_binary")

load("//project:copts.bzl", "DEFAULT_DEPS", "DEFAULT_COPTS", "DEFAULT_LINKOPTS")

cc_binary (
    name = "main",
    srcs = [
        "main.cpp",
    ],
    deps = [ "//project/core:mylib" ]
        + DEFAULT_DEPS,
    copts = DEFAULT_COPTS,
    linkopts = DEFAULT_LINKOPTS
)
