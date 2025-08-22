#include <math.h>
#include <stdio.h>
#include <assert.h>
//#include <TXLib.h>

const int INF = -1; /* roots = infinity */

bool CompareDoubles (double a, double b) {   /*сравнение даблов */
    if (fabs(a - b) < 0.001)
        return true;
    return false;
}

int SqrEq(double a, double b, double c,
          double *x1, double *x2) { /* функция, которая решает квадратное уравнение */

    assert (*x1 == NULL);
    assert (*x2 == NULL);      /* ошибочки */
    assert (*x1 == *x2);

    if (CompareDoubles(a, 0)) { /* вариант, когда уравнение линейное */
        if (CompareDoubles(b, 0)) {
            if (CompareDoubles(c, 0)) {
                return INF;
            }

            return 0;
        }

        *x1 = - c / b;
        return 1;
    }

    double d = b * b - 4 * a * c; /* дискриминант */

    if (d < 0) {
        return 0;
    }
    if (CompareDoubles(d, 0)) {
        *x1 = - b / (2 * a);
        return 1;
    }

    double sqr = sqrt(d);
    *x1 = (-b + sqr) / (2 * a);
    *x2 = (-b - sqr) / (2 * a);

    return 2;
}

int scan(double *a, double *b, double *c) {

    printf("The quadratic equation solver\n");
    printf("Enter three number: \n");
    scanf("%lf %lf %lf", a, b, c);
    return 0;

}

int print(int nRoots, double x1, double x2) {

    if (nRoots == 0) {
        printf("No Roots\n");
        return 0;
    }
    if (nRoots == 1) {
        printf("x = %f\n", x1);
        return 0;
    }
    if (nRoots == INF) {
        printf("Infinity\n");
        return 0;
    }
    if (nRoots == 2) {
        printf("x1 = %f, x2 = %f\n", x1, x2);
        return 0;
    }
    printf ("Error");
    return 1;

}

int main(void) {

    double a = 0, b = 0, c = 0;
    double x1 = 0, x2 = 0;

    int flag = scan(&a, &b, &c);
    printf("%f %f %f\n", a, b, c);

    int nRoots = SqrEq(a, b, c, &x1, &x2);
    printf("%g %g %d\n", x1, x2, nRoots);

    flag = print(nRoots, x1, x2);
    return 0;

}
