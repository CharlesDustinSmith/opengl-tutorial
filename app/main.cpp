#include <iostream> 
#include "window.h"

int main(int argc, char *argv[])
{
    if(openglTutWindow(800, 600) == 1)
    {
        printf("Window failed to open! :(\n");
    }
    else if(openglTutWindow(800, 600) == 0)
    {
        printf("Window opened successfully :)\n");
    }
    else
    {
        printf("Undefined behaviour! :((\n");
    }

    return 0;
}