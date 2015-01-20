cmake_minimum_required (VERSION 2.8.11)

project (SnowSim)
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

find_package (OpenGL REQUIRED)
find_package (GLEW REQUIRED)
find_package (OpenCL REQUIRED)
find_package (FreeImage REQUIRED)
find_package (Threads REQUIRED)

add_subdirectory (glfw-3.1)
include_directories (glfw-3.1/include)

set (libs glfw ${GLFW_LIBRARIES} ${OPENGL_LIBRARY} ${GLEW_LIBRARY} ${OPENCL_LIBRARIES} ${FREEIMAGE_LIBRARY} ${CMAKE_THREAD_LIBS_INIT})
set (src CLHelpers.cpp Grid.cpp Matrix2f.cpp Particle.cpp PointCloud.cpp Shape.cpp Vector2f.cpp main.cpp)

add_executable(snow ${src})
target_link_libraries (snow ${libs})