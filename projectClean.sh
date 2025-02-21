#!/usr/bin/env bash 
if [ -d "./vcpkg_installed" ]; then
    echo "Removing vcpkg_installed folder."
    rm -r ./vcpkg_installed
else 
    echo "The vcpkg_installed directory does not exist."
fi 

if [ -d "./build" ]; then
    echo "Removing the build folder."
    rm -r ./build
else 
    echo "The build directory does not exist."
fi