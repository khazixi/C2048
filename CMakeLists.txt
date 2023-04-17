cmake_minimum_required(VERSION 3.25)
project(C2048)

set(CMAKE_C_STANDARD 99)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../bin)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_executable(C2048 "./src/main.c")

add_subdirectory("./submodules/glfw/")
target_link_libraries(C2048 glfw)
find_package(OpenGL REQUIRED)
target_link_libraries(C2048 OpenGL::GL)

target_sources(C2048 PUBLIC  "./src/main.c")


