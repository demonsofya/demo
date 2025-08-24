#include <stdio.h>
#include "constants.h"
#include "structs.h"
#include "structs.h"

int print(Roots *roots) {
    int nRoots = roots->number_of_roots;
    switch (nRoots) {
        case NoRoots:
            printf("No Roots\n");
            break;
        case OneRoot:
            printf("x = %lg\n", roots->x1);
            break;
        case TwoRoots:
            printf("x1 = %lg, x2 = %lg\n", roots->x1, roots->x2);
            break;
        case Inf:
            printf("Infinity\n");
            break;
        default:
            printf ("Error");
            return 1;
    }

    return 0;
}
