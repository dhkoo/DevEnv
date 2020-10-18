include_directories(/system/include)
link_directories(/system/lib/x86_64-linux-gnu)

# 전처리기에 전달할 매크로 정의  (컴파일러 옵션 -D)
add_definitions(-DOS_TOS)

# CMAKE_CXX_STANDARD 변수를 통해 C++ 버전을 전역적으로 지정 (-std=c++11)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Debug)
set(SOURCE_FILES main.cc a.cc b.cc)
add_executable(example ${SOURCE_FILES})
target_link_libraries(example
  twk
  views
  taf
  controls
  eventloop
  print_lib
  base
)
