#include_directories("${CMAKE_SOURCE_DIR}")
#include_directories("${CMAKE_SOURCE_DIR}/include")

project(gpusph LANGUAGES CXX CUDA)

find_package(CUDA  REQUIRED) #In order to find CUDA_INCLUDE_DIRS

include_directories(${CUDA_INCLUDE_DIRS} 
										${CUDA_PATH}/include )

file(GLOB SOURCE
       #${PROJECT_SOURCE_DIR}/
			 *.cc			 
			 )


add_executable (gpusph ${SOURCE})
			 
			 
target_include_directories(gpusph PUBLIC
	${CUDA_INCLUDE_DIRS}
	
)