@REM Run cmake command to configure the project.
cmake -S . ^
-B ./build ^
-DCOMPILE_EXECUTABLE=ON ^
-DUSE_VCPKG=ON ^
-G "Visual Studio 17 2022" ^
-A x64

@REM Command to build the cmake project.
cd build
MSBuild.exe ./OpenGLTutorial.sln
@REM cmake --build ./Build --config Debug

@REM Running the executable
./app/Debug/OpenGLTut.exe
