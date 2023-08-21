
# GLFW3
add_library(glfw3 STATIC IMPORTED)
if(WIN32)
    set_property(TARGET glfw3  PROPERTY IMPORTED_LOCATION ${PROJECT_SOURCE_DIR}/dependencies/glfw/lib-vc2022/glfw3.lib)
endif(WIN32)
set_property(TARGET glfw3 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${PROJECT_SOURCE_DIR}/dependencies/glfw/include)


# GLAD
add_library(glad STATIC ${PROJECT_SOURCE_DIR}/dependencies/glad/src/gl.c)
target_include_directories(glad PUBLIC ${PROJECT_SOURCE_DIR}/dependencies/glad/include)
set_property(TARGET glad PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${PROJECT_SOURCE_DIR}/dependencies/glad/include)