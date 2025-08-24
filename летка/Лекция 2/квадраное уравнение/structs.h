#ifndef STRUCTS_H_INCLUDED
#define STRUCTS_H_INCLUDED
#include "structs.h"
#include "constants.h"

struct Coeffs {
    double a;
    double b;
    double c;
};

struct Roots {
    double x1;
    double x2;
    double number_of_roots;
};

struct UnitTest {
    Coeffs coeffs;
    Roots roots;
};


#endif // STRUCTS_H_INCLUDED
