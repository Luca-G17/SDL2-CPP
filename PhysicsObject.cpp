#include <SDL2/SDL.h>
#include "include/PhysicsObject.hpp"
#include <iostream>

using namespace std;

PhysicsObject::PhysicsObject(std::pair<double, double> dims, std::pair<double, double> pos, std::pair<double, double> vel, double mass) {
    dimensions = dims;
    position = pos;
    velocity = vel;
    this->mass = mass;
}

void PhysicsObject::applyAcceleration(std::pair<double, double> accel, double deltaTime) {
    // s = ut + 1/2at^2
    double timeSquared = deltaTime * deltaTime;
    position.first += velocity.first * deltaTime + (1 / 2) * accel.first * timeSquared;
    position.second += velocity.second * deltaTime + (1 / 2) * accel.second * timeSquared;

    velocity.first += accel.first * deltaTime;
    velocity.second += accel.second * deltaTime;
    std::cout << "Box Velocity = (" << velocity.first << ", " << velocity.second << ")" << endl; 
}

void PhysicsObject::applyForce(std::pair<double, double> force) {
    // f / m = a
    std::pair<double, double> accel = {
        force.first / mass,
        force.second / mass
    };
}

/**
 * @brief Calculate new position and velocity after collision.
 * 
 * @param normal Unit vector representing collision angle
 * @param offset Static collision offset
 * @param iv Velocity of incoming object
 * @param im Mass of incoming object
 * @param accel Relative Acceleration
 * @param fixed Is the other object fixed
 */
void PhysicsObject::collision(std::pair<double, double> normal, std::pair<double, double> offset, std::pair<double, double> iv, double im, std::pair<double, double> accel, bool fixed) {
    position.first += offset.first;
    position.second += offset.second;
    // v^2 = u^2 + 2as
    // sqrt(v^2 - 2as) = u
    velocity.first = sqrt((velocity.first * velocity.first) - (2.0 * -accel.first * offset.first));
    velocity.second = sqrt((velocity.second * velocity.second) - (2.0 * -accel.second * offset.second));

    if (!fixed) {
        double combinedMass = im + mass;
        velocity.first = (mass - im) * velocity.first / combinedMass + (2.0 * im * iv.first) / combinedMass;
        velocity.second = (mass - im) * velocity.second / combinedMass + (2.0 * im * iv.second) / combinedMass;
    }
    else {
        velocity.first = -velocity.first;
        velocity.second = -velocity.second;
    }
    
}

std::pair<double, double> PhysicsObject::getPosition() {
    return this->position;
}

std::pair<double, double> PhysicsObject::getDimensions() {
    return this->dimensions;
}
