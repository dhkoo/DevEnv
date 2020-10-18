# README

## How to build?
1. cmake -S . -B out
2. make -C ./out OR cd out; make

## How to execute?
1. ./out/bin/example

##  CMake 구성 틀
### top-level dir의 CMakeLists.txt에서 설정할 것들
1. cmake_mininum_required
1. project
1. (optional) runtime output이 저장될 곳 설정
1. add_subdirectory

### 실제 source가 위치한 dir의 CMakeLists.txt에서 설정할 것들
1. include_directories : 헤더파일을 찾을 위치를 정하는 명렁어
2. link_directories : object 파일을 찾을 위치를 정하는 명렁어
3. set(SRCS main.cc a.cc b.cc)
4. add_executable(exec ${SRCS})
5. target_link_libraries(exec a b c d) : 실행파일 혹은 object에 라이브러리를 링크해주는 명렁어
