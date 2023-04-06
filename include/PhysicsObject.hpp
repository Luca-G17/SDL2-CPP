#pragma once
#include <SDL2/SDL.h>
#include <utility>

using namespace std;

class PhysicsObject {
    public:
        PhysicsObject(pair<double, double> dims, pair<double, double> pos, pair<double, double> vel, double mass);
        void applyAcceleration(pair<double, double> accel, double deltaTime);
        void applyForce(pair<double, double> force);
        void collision(pair<double, double> normal, pair<double, double> offset, pair<double, double> incomingVelocity, double mass, pair<double, double> accel, bool fixed);
        pair<double, double> getPosition();
        pair<double, double> getDimensions();
    private:
        SDL_Rect* rect;
        std::pair<double, double> velocity;
        std::pair<double, double> position;
        std::pair<double, double> dimensions;
        double mass;
};