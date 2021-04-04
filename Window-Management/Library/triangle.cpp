//
//  triangle.cpp
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#include "triangle.hpp"

const float get_triangle_length(const float width, const float height) {
    return width < height
        ? width  / 8
        : height / 8;
}

std::tuple<const float, const float> get_triangle_A(const float x, const float y, const float length) {
    return {x, y};
}

std::tuple<const float, const float> get_triangle_B(const float x, const float y, const float length) {
    return {x - length / 2, y - length * cos(30)};
}

std::tuple<const float, const float> get_triangle_C(const float x, const float y, const float length) {
    return {x + length / 2, y - length * cos(30)};
}
