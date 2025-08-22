#include <math.h>
#include <stdio.h>

int INF = -1; /* roots = infinity */

int SqrEq(double a, double b, double c,
    double *x1, double *x2) { /* функция, которая решает квадратное уравнение */
    if (a == 0) { /* вариант, когда уравнение линейное */
        if (b == 0) {
            if (c == 0) {
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
    } if (d == 0) {
        *x1 = - b / (2 * a);
        return 1;
    }
    double sqr = sqrt(d);
    *x1 = (-b + sqr) / (2 * a);
    *x2 = (-b - sqr) / (2 * a);
    return 2;
}

int main(void) {
    float a = 0, b = 0, c = 0;
    printf("The quadratic equation solver\n");
    printf("Enter three number: \n");
    scanf("%f %f %f", &a, &b, &c);
    /* printf("%f %f %f\n", a, b, c); самопроверка*/
    double x1 = 0.0, x2 = 0.0;
    int nRoots = SqrEq(a, b, c, &x1, &x2);
    /* printf("%g %g %d\n", x1, x2, nRoots); самопроверка */
    if (nRoots == 0) {
        printf("No Roots\n");
    } else if (nRoots == 1) {
        printf("x = %f\n", x1);
    } else if (nRoots == INF) {
        printf("Infinity\n");
    } else {
        printf("x1 = %f, x2 = %f\n", x1, x2);
    }
    return 0;
}
