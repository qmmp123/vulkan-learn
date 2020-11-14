cmake_minimum_required(VERSION 3.17)
project(VulkanSample)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")

find_library(glfw REQUIRED)
find_library(vulkan REQUIRED)
find_library(dl REQUIRED)
find_library(pthread REQUIRED)
find_library(X11 REQUIRED)
find_library(Xxf86vm REQUIRED)
find_library(Xrandr REQUIRED)
find_library(Xi REQUIRED)

add_executable(VulkanTest ./src/main.cpp)

target_link_libraries(VulkanTest glfw)
target_link_libraries(VulkanTest vulkan)
target_link_libraries(VulkanTest dl)
target_link_libraries(VulkanTest pthread)
target_link_libraries(VulkanTest X11)
target_link_libraries(VulkanTest Xxf86vm)
target_link_libraries(VulkanTest Xrandr)
target_link_libraries(VulkanTest Xi)

configure_file(./src/frag.spv ${CMAKE_CURRENT_BINARY_DIR}/shaders/frag.spv COPYONLY)
configure_file(./src/vert.spv ${CMAKE_CURRENT_BINARY_DIR}/shaders/vert.spv COPYONLY)
