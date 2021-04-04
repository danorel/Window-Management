//
//  triangle.hpp
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#ifndef triangle_hpp
#define triangle_hpp

#include <cmath>
#include <tuple>

const float get_triangle_length(const float width, const float height);
std::tuple<const float, const float> get_triangle_A(const float x, const float y, const float length);
std::tuple<const float, const float> get_triangle_B(const float x, const float y, const float length);
std::tuple<const float, const float> get_triangle_C(const float x, const float y, const float length);

#endif /* triangle_hpp */
