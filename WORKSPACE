load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "gtest",
    urls = ["https://github.com/google/googletest/archive/aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e.zip"],
    strip_prefix = "googletest-aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e"
)

VS_MSVC_PATH = "c:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\BuildTools\\VC\\Tools\\MSVC\\14.28.29333\\"

new_local_repository(
    name = "windows_cl_asan_repo",
    build_file = "@//third_party:asan.BUILD",
    path = VS_MSVC_PATH,
)