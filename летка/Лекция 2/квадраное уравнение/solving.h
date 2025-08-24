#ifndef SOLVING_H_INCLUDED
#define SOLVING_H_INCLUDED
#include "structs.h"

int Linear(Coeffs *coeffs, Roots *roots);

int Quadr(Coeffs *coeffs, Roots *roots);

int SqrEq(Coeffs *coeffs, Roots *roots);

#endif // SOLVING_H_INCLUDED
