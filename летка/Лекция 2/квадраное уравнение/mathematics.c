#include <math.h>
#include <stdio.h>
#include "constants.h"
#include "structs.h"

bool CompareDoubles (double a, double b) {   /*сравнение даблов */

    return (fabs(a - b) < EPS);
}
