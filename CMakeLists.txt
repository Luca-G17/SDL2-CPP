cmake_minimum_required(VERSION 3.7)

project(SDL2Test)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/sdl2)
find_package(SDL2 REQUIRED)
find_package(SDL2_ttf REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})
include_directories(include)
file(GLOB SOURCES ./*.cpp include/*.cpp)

add_executable(SDL2Test ${SOURCES})
target_link_libraries(SDL2Test ${SDL2_LIBRARIES} SDL2::TTF)
SET(CMAKE_CXX_FLAGS  "-Wall -std=c++11 -g")
SET(CMAKE_EXE_LINKER_FLAGS "-lSDL2_ttf")