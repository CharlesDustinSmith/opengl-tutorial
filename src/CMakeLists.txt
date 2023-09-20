# List variable for library source(.cpp) files
list(APPEND LIBRARY_SOURCES "window.cpp")
# List variable for library header(.h) files
list(APPEND LIBRARY_HEADERS "window.h")

# Variable for includes 
if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    set(LIBRARY_INCLUDES 
        "./include/"
        "${CMAKE_BINARY_DIR}/configured_files/include/"
        "${VCPKG_INSTALLED_DIR}/x64-windows/include/"
    )
else()
    set(LIBRARY_INCLUDES 
        "./include/"
        "${CMAKE_BINARY_DIR}/configured_files/include/"
        "${VCPKG_INSTALLED_DIR}/x64-linux/include/"
    )
endif()

# External link libraries.
list(APPEND LINK_LIBRARIES GLEW::GLEW)
list(APPEND LINK_LIBRARIES glfw)

# Adding the library to the project
add_library(${LIBRARY_NAME} STATIC ${LIBRARY_SOURCES})


target_include_directories(${LIBRARY_NAME} PUBLIC ${LIBRARY_INCLUDES})

target_link_libraries(${LIBRARY_NAME} PRIVATE ${LINK_LIBRARIES})