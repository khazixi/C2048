cmake_minimum_required(VERSION 3.25)
project(C2048)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_STANDARD 99)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_executable(C2048 "./src/main.c")

add_library(glad STATIC "./submodules/glad/src/glad.c")
target_include_directories(glad PUBLIC "./submodules/glad/include/")

add_library(linmath INTERFACE)
target_include_directories(linmath INTERFACE "./submodules/linmath.h/")
target_link_libraries(C2048 linmath)

add_subdirectory("./submodules/glfw/")
target_link_libraries(C2048 glfw)
find_package(OpenGL REQUIRED)
target_link_libraries(C2048 OpenGL::GL)
target_link_libraries(C2048 glad)

target_sources(C2048 PUBLIC  "./src/main.c")


