echo "Run cmake command to configure the project."
cmake -S . \
-B ./build \
-DCOMPILE_EXECUTABLE=ON \
-DUSE_VCPKG=ON \
-G "Unix Makefiles" \

# Command to build the cmake project.
echo "Building solution file"
cmake --build ./build --config Debug

echo "Running the executable"
echo "Change to executable directory (./build/app/Debug/)"
cd ./build/app

echo "Running executable ./OpenGLTut"
./OpenGLTut
echo "Returning back to the Project home directory"
cd ../../../


