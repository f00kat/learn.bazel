# learn.bazel

Example for how to use ASAN in solution under Windows.

Usage:  
Modify variable VS_MSVC_PATH in WORKSPACE file.

Build ASAN CL Dynamic  
`bazel build -c opt //project/main:main --//project:asan=True`  

Build ASAN CL Static  
`bazel build -c opt //project/main:main --//project:asan=True --//project:linkstatic=True`  

Build ASAN CLANG-CL Dynamic  
`bazel build -c opt //project/main:main --//project:asan=True --compiler=clang-cl`  
