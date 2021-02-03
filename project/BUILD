load("//project:build_flags.bzl", "bool_flag")

bool_flag(name = "asan", build_setting_default = False)
bool_flag(name = "linkstatic", build_setting_default = False)

config_setting(
    name = "windows_cl_asan_static",
    flag_values = {
        ":asan" : "True",
        ":linkstatic" : "True"
    },
)

config_setting(
    name = "windows_cl_asan_dynamic",
    flag_values = {
        ":asan" : "True"
    },
)

config_setting(
    name = "windows_clangcl_asan",
    values = {
        "compiler": "clang-cl",
    },
    flag_values = {
        ":asan" : "True"
    },
)