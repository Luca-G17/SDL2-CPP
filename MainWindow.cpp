#include <SDL2/SDL.h>
#include "include/MainWindow.hpp"
#include <iostream>
#include "include/PhysicsObject.hpp"
#include <SDL2/SDL_ttf.h>
#include <float.h>
#include <vector>

using namespace std;

TTF_Font* font;
MainWindow::MainWindow() {
    SDL_CreateWindowAndRenderer(680, 480, SDL_WINDOW_RESIZABLE, &mainWindow, &mainWindowRenderer);
}

void MainWindow::main_loop() {
    Uint32 lastUpdate = SDL_GetTicks();
    double deltaTime = 0;
    int close = 0;
    PhysicsObject p1 = PhysicsObject(
        pair<double, double> { 200, 200 },
        pair<double, double> { 250, 0 },
        pair<double, double> { 0, 0 },
        20.0
    );
    PhysicsObject p2 = PhysicsObject(
        pair<double, double> { 200, 200 },
        pair<double, double> { 480, 100 },
        pair<double, double> { 0, 0 },
        20.0
    );
    vector<PhysicsObject*> physicsObjects = {
        &p1,
        &p2
    };

    while (!close) {
        Uint64 start = SDL_GetPerformanceCounter();
        while (SDL_PollEvent(&mainWindowEvent) > 0) {
            switch (mainWindowEvent.type) {
                case SDL_QUIT:
                    close = 1;
                    break;
                case SDL_MOUSEMOTION:

                    break;
                case SDL_KEYDOWN:
                    std::cout << "TEST" << endl;
            }
        }

        Uint32 current = SDL_GetTicks();
        deltaTime = (current - lastUpdate) / 1000.0f;
        physicsUpdate(deltaTime, physicsObjects);
        lastUpdate = current;

        draw(physicsObjects);
        Uint64 end = SDL_GetPerformanceCounter();
        double elapsedMS = (end - start) / (double)SDL_GetPerformanceFrequency() * 1000.0f;
        SDL_Delay(floor(16.666f - elapsedMS));
    }
    this->close();
}

void MainWindow::renderText(string text) {
    TTF_Init();
    font = TTF_OpenFont("Roboto-Light.ttf", 24);
	SDL_Color fg = { 255, 255, 255, 1 };
	SDL_Surface* surf = TTF_RenderText_Solid(font, text.c_str(), fg);
    SDL_Rect dest = { 20, 20, 0, 0 };

	dest.w = surf->w;
	dest.h = surf->h;

	SDL_Texture* tex = SDL_CreateTextureFromSurface(mainWindowRenderer, surf);
	SDL_RenderCopy(mainWindowRenderer, tex, NULL, &dest);
	SDL_DestroyTexture(tex);
	SDL_FreeSurface(surf);
    TTF_Quit();
}

void MainWindow::close() {
    SDL_DestroyWindow(mainWindow);
    SDL_Quit();
}

void MainWindow::physicsUpdate(double deltaTime, vector<PhysicsObject*> physicsObjects) {
    std::pair<double, double> gravity = { 0, 40.0 };    
    int groundY = 400;

    for (auto object : physicsObjects) {
        (*object).applyAcceleration(gravity, deltaTime);
        if ((*object).getDimensions().second + (*object).getPosition().second >= groundY) {
            double yOff = (*object).getDimensions().second + (*object).getPosition().second - groundY;
            (*object).collision(std::pair<double, double> { 0, 0 },
                           std::pair<double, double> { 0 , -yOff },
                           std::pair<double, double> { 0, 0 }, 
                           10.0,
                           gravity,
                           true);
        }
    }
}

void MainWindow::draw(vector<PhysicsObject*> objects) {
    SDL_RenderClear(mainWindowRenderer);

    SDL_SetRenderDrawColor(mainWindowRenderer, 255, 255, 255, 255);
    
    for (auto rect : objects) {
        SDL_Rect rectangle;
        rectangle.w = (*rect).getDimensions().first;
        rectangle.h = (*rect).getDimensions().second;
        rectangle.x = (*rect).getPosition().first;
        rectangle.y = (*rect).getPosition().second;

        SDL_RenderDrawRect(mainWindowRenderer, &rectangle);
    }

    SDL_SetRenderDrawColor(mainWindowRenderer, 0, 0, 0, 255);

    SDL_RenderPresent(mainWindowRenderer);
}