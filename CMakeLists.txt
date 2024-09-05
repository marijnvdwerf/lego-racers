cmake_minimum_required(VERSION 3.26)

project(legoracers LANGUAGES CXX C)

add_compile_options(-nostdinc)

file(GLOB_RECURSE SRC LIST_DIRECTORIES false "src/**/*.cpp" "src/**/*.c")
add_library(legoracers SHARED ${SRC})
target_include_directories(legoracers PRIVATE include)

