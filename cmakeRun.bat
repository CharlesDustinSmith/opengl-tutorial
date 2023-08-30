@REM Run cmake command to configure the project.
cmake -S . ^
-B ./build ^
-DCOMPILE_EXECUTABLE=ON ^
-DUSE_VCPKG=ON ^
-G "Visual Studio 17 2022" ^
-A x64

@REM Command to build the cmake project.
echo "Building solution file"
MSBuild.exe ./build/OpenGLTutorial.sln
@REM cmake --build ./Build --config Debug

@REM Running the executable
echo "Change to executable directory (./build/app/Debug/)"
cd ./build/app/Debug/
echo "Running executable ./OpenGLTut.exe"
OpenGLTut.exe
echo "Returning back to the Project home directory"
cd ../../../

