#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_timer.h>
#include <iostream>
#include "include/MainWindow.hpp"
#include <SDL2/SDL_ttf.h>


int main(int argc, char *argv[]) {
    MainWindow mainWindow = MainWindow();
    mainWindow.main_loop();
}