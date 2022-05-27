cmake_minimum_required(VERSION 3.2)
project(app VERSION 0.0.1)
set(CMAKE_CXX_STANDARD 20)



add_subdirectory(src)
add_subdirectory(test)



add_executable(app
main.cpp
)

target_link_libraries(app 
   
    server)