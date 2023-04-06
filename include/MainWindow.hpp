#pragma once
#include <SDL2/SDL.h>
#include "PhysicsObject.hpp"
#include <string>
#include <vector>

class MainWindow {
    public:
        MainWindow();
        void main_loop();
        void physicsUpdate(double delta, vector<PhysicsObject*> physicsObjects);
        void draw(vector<PhysicsObject*> objects);
        void close();
        void renderText(std::string text);
    private:
        SDL_Window   *mainWindow;
        SDL_Renderer *mainWindowRenderer;
        SDL_Event    mainWindowEvent;
};
