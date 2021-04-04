//
//  triangle.cpp
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#include "triangle.h"

PointTuple::PointTuple(float x_, float y_) {
    x = x_;
    y = y_;
};

const float get_triangle_length(const float width, const float height) {
    return width < height
        ? width  / 8
        : height / 8;
}

PointTuple get_triangle_A(const float x, const float y, const float length) {
    return {x, y};
}

PointTuple get_triangle_B(const float x, const float y, const float length) {
    return {x - length / 2, static_cast<float>(y - length * cos(30))};
}

PointTuple get_triangle_C(const float x, const float y, const float length) {
    return {x + length / 2, static_cast<float>(y - length * cos(30))};
}
