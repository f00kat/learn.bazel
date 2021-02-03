# -- CL
CL_ASAN_COPTS = ["/Zi", 
                "-fsanitize=address" ]

## DYNAMIC
CL_ASAN_COPTS_DYNAMIC = CL_ASAN_COPTS

CL_ASAN_LINKOPTS = ["/wholearchive:clang_rt.asan_dynamic-x86_64.lib",
                    "/wholearchive:clang_rt.asan_dynamic_runtime_thunk-x86_64.lib"]

## STATIC
CL_ASAN_COPTS_STATIC = CL_ASAN_COPTS + ["/MT"]

CL_ASAN_LINKOPTS_STATIC = ["/NODEFAULTLIB:msvcrt.lib",
                        "/NODEFAULTLIB:libcmtd.lib", 
                        "/NODEFAULTLIB:msvcrtd.lib",
                        "/wholearchive:clang_rt.asan-x86_64.lib"]

# -- CLANG-CL
CLANG_CL_ASAN_COPTS = ["-fsanitize=address",
                        "-fno-sanitize-blacklist",
                        "-g",
                        "-O1"]

CLANG_CL_ASAN_LINKOPTS = []

DEFAULT_COPTS = select({
    "//project:windows_cl_asan_dynamic": CL_ASAN_COPTS,
    "//project:windows_cl_asan_static": CL_ASAN_COPTS_STATIC,
    "//project:windows_clangcl_asan": CLANG_CL_ASAN_COPTS,
    "//conditions:default": [],
})

DEFAULT_LINKOPTS = select({    
    "//project:windows_cl_asan_dynamic": CL_ASAN_LINKOPTS,
    "//project:windows_cl_asan_static": CL_ASAN_LINKOPTS_STATIC,
    "//project:windows_clangcl_asan": CLANG_CL_ASAN_LINKOPTS,
    "//conditions:default": [],
})

DEFAULT_DEPS = select({
    "//project:windows_cl_asan_dynamic": [ "//third_party:asan"],
    "//project:windows_clangcl_asan": [ "//third_party:asan"],
    "//project:windows_cl_asan_static" : [],
    "//conditions:default": [],        
})