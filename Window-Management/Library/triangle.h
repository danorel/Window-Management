//
//  triangle.h
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#ifndef triangle_h
#define triangle_h
    
#include <math.h>
#include <pair.h>

const float get_triangle_length(const float width, const float height);
std::tuple<const float, const float> get_triangle_A(const float x, const float y, const float length);
std::tuple<const float, const float> get_triangle_B(const float x, const float y, const float length);
std::tuple<const float, const float> get_triangle_C(const float x, const float y, const float length);

#endif /* triangle_h */
