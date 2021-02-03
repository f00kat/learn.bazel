load("@rules_cc//cc:defs.bzl", "cc_import", "cc_library")

cc_import(
  name = "asan_internal",  
  interface_library = "lib/x64/clang_rt.asan_dynamic-x86_64.lib",
  shared_library = "bin/Hostx64/x64/clang_rt.asan_dynamic-x86_64.dll",
)

cc_library(
  name = "asan_lib",  
  srcs = ["lib/x64/clang_rt.asan_dynamic_runtime_thunk-x86_64.lib"],
  deps = [":asan_internal"],
  visibility = ["//visibility:public"]
)
