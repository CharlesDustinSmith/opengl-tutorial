# The minimum required CMake version.
cmake_minimum_required(VERSION 3.25)

# Defining the name of the project, the version, and language permitted.
project(
    OpenGL-Tutorial
    VERSION 1.0.0
    LANGUAGES C CXX
) 

# Setting the C and C++ standard.
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
# The CMAKE_C_STANDARD_REQUIRED CMAKE_CXX_STANDARD_REQUIRED variables control whether the specified C++ standard version must be strictly adhered to.
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# The CMAKE_C_EXTENSIONS and CMAKE_C_EXTENSIONS variables controls whether compiler-specific extensions are enabled using a particular C/C++ standards.
set(CMAKE_C_EXTENSIONS)
set(CMAKE_CXX_EXTENSIONS)

# List of options.
option(COMPILE_EXECUTABLE "Whether to compile executable or not" ON)
option(ENABLE_TESTING "Whether to compile test or not" OFF)
option(USE_VCPKG "Whether or not to use vcpkg" ON)

# Set variable name for Library and Executable.
set(LIBRARY_NAME Libary)
set(EXECUTABLE_NAME OpenGLTut)

# Inlcuding external libraries from VCPKG.
if(USE_VCPKG)
    include("C:/Program Files/vcpkg/scripts/buildsystems/vcpkg.cmake")
    find_package(GLEW REQUIRED)
    find_package(glfw3 CONFIG REQUIRED)
endif()

# Adding subdirectories.
add_subdirectory(configured)
add_subdirectory(src)
if(COMPILE_EXECUTABLE)
    add_subdirectory(app)
endif()
