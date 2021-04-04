//
//  triangle.h
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#ifndef triangle_h
#define triangle_h

#include <math.h>

#if __cplusplus
struct PointTuple {
    float x;
    float y;
    
    PointTuple(float x_, float y_);
};

const float get_triangle_length(const float width, const float height);

struct PointTuple get_triangle_A(const float x, const float y, const float length);
struct PointTuple get_triangle_B(const float x, const float y, const float length);
struct PointTuple get_triangle_C(const float x, const float y, const float length);
#endif

#endif /* triangle_h */
