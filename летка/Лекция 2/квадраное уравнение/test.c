#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "constants.h"
#include "mathematics.h"
#include "solving.h"
#include "test.h"
#include "structs.h"
#include <math.h>


int Test() {

    double x1 = NAN, x2 = NAN;
    int nRoots = 0;  //TODO: struct array UnitTest with structs coeffs and roots
    //(roots contains number of roots)
    bool flag = true;
    Roots roots = {};
    Coeffs coeffs = {};

    for (int test_num = 0; test_num < sizeof(tests); test_num++) {
        coeffs = tests[test_num].coeffs;
        roots.number_of_roots = SqrEq(&coeffs, &roots);
        flag = flag && IsRootsRight(&roots, test_num);
    }

    if (flag) {
        printf("All tests passed\n");
    }

    return 0;
}

bool IsRootsRight(Roots *roots, int test_num) {

    if (tests[test_num].roots.number_of_roots == 2) {   // если корней два
        if (!(((CompareDoubles(roots->x1, tests[test_num].roots.x1) && CompareDoubles(roots->x2, tests[test_num].roots.x2)) ||
             ((CompareDoubles(roots->x2, tests[test_num].roots.x1) && CompareDoubles(roots->x1, tests[test_num].roots.x2))) &&
             roots->number_of_roots == 2))) {

            ErrorPrint(roots, test_num);
            return false;
        }
    } else if (tests[test_num].roots.number_of_roots == 1) {   // если корень один
        if (!((CompareDoubles(roots->x1, tests[test_num].roots.x1) || CompareDoubles(roots->x2, tests[test_num].roots.x1)) &&
             roots->number_of_roots == 1)){

            ErrorPrint(roots, test_num);
            return false;
        }
    }  else if (tests[test_num].roots.number_of_roots == Inf) { // если корней бесконечность
        if (roots->number_of_roots != Inf) {

            ErrorPrint(roots, test_num);
            return false;
        }
    } else { // вариант когда корней нет (но через элзе)
        if ((roots->number_of_roots) != 0) {

            ErrorPrint(roots, test_num);
            return false;
        }
    }

    return true;
}

void ErrorPrint(Roots *roots, int test_num) {

    printf("The solve is cringe: x1 right = %lg, x2 right = %lg, number of Roots right = %d;\n",
            tests[test_num].roots.x1, tests[test_num].roots.x2, tests[test_num].roots.number_of_roots);
    printf("your x1 = %lg, x2 = %lg, number of Roots = %d\n", roots->x1, roots->x2, roots->number_of_roots);
    printf("Koeffs are: a = %lg, b = %lg, c = %lg",
            tests[test_num].coeffs.a, tests[test_num].coeffs.b, tests[test_num].coeffs.c);
}
