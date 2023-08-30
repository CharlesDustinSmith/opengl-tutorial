@REM Run cmake command to configure the project.
cmake -S . ^
-B ./Build
-DCOMPILE_EXECUTABLE=ON ^
-DUSE_VCPKG=ON ^
-G "Visual Studio 17 2022" ^
-A x64

@REM Command to build the cmake project.
cd Build
MSBuild.exe ./OpenGL-Tutorial.sln

@REM Running the executable

