cmake_minimum_required(VERSION 3.6)
project(cmake_example)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
add_subdirectory(example)

# Macro explanation
## CMAKE_SOURCE_DIR : 최상위 CMakeLists.txt 위치한 폴더 의미
## CMAKE_CURRENT_SOURCE_DIR : 현재 해석 중인 CMakeLists.txt가 위치한 디렉토리
## CMAKE_BINARY_DIR : build tree의 top level path를 의미
### cmake -S . -B out 인 경우, Build를 out에 하겠다는 의미며 CMAKE_BINARY_DIR가 out에 해당하게 됨
## CMAKE_RUNTIME_OUTPUT_DIRECTORY : add_executable한 target file이 빌드되어 위치하는 디렉토리 의미
### make -C ./out 수행시, output이 out/bin으로 떨구겠다는 의미; 위 설정을 하지 않으면 out/에 output이 떨어짐
