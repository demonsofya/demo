#include <math.h>
#include <stdio.h>
#include <assert.h>
//#include <TXLib.h>

bool CompareDoubles (double a, double b);
int Linear(double a, double b, double c, double *x1, double *x2);
int Quadr(double a, double b, double c, double *x1, double *x2);
int SqrEq(double a, double b, double c, double *x1, double *x2);
int scan(double *a, double *b, double *c);
int print(int nRoots, double x1, double x2);
int print(int nRoots, double x1, double x2);


enum ROOTS {
    INF = -1,
    NoRoots = 0,
    OneRoot = 1,
    TwoRoots = 2
        // TODO: enum
};

const double eps = 0.001;

bool CompareDoubles (double a, double b) {   /*сравнение даблов */
    if (fabs(a - b) < eps) //TODO: const
        return true;

    return false;
}

int Linear(double a, double b, double c,
          double *x1, double *x2) {
    // assetов нет, они в SqrEq

    if (CompareDoubles(b, 0)) {       // TODO: func
        if (CompareDoubles(c, 0))
            return INF;

        return NoRoots;
    }
    *x1 = - c / b;

    return OneRoot;
}

int Quadr(double a, double b, double c,
          double *x1, double *x2) {
    double d = b * b - 4 * a * c; /* дискриминант */

    if (d < 0) {
        return NoRoots;
    }
    if (CompareDoubles(d, 0)) {
        *x1 = - b / (2 * a);
        return OneRoot;
    }

    double sqr = sqrt(d);
    *x1 = (-b + sqr) / (2 * a);
    *x2 = (-b - sqr) / (2 * a);

    return TwoRoots;
}

int SqrEq(double a, double b, double c,
          double *x1, double *x2) { /* функция, которая решает квадратное уравнение */

    assert (x1 != NULL);
    assert (x2 != NULL);      /* ошибочки */
    assert (*x1 == *x2);

    if (CompareDoubles(a, 0)) { /* вариант, когда уравнение линейное */
        return Linear(a, b, c, x1, x2);
    }

    return Quadr(a, b, c, x1, x2);
}

int scan(double *a, double *b, double *c) {

    assert (a != NULL);
    assert (b != NULL);
    assert (c != NULL);

    printf("The quadratic equation solver\n");
    printf("Enter three number: \n");
    scanf("%lf %lf %lf", a, b, c);

    return 0;
}

int print(int nRoots, double x1, double x2) {

    switch (nRoots) {
        case NoRoots:
            printf("No Roots\n");
            return 0;
            break;
        case OneRoot:
            printf("x = %f\n", x1);
            return 0;
            break;
        case TwoRoots:
            printf("x1 = %f, x2 = %f\n", x1, x2);
            return 0;
            break;
        case INF:
            printf("Infinity\n");
            return 0;
            break;
        default:
            printf ("Error");
            return 1;
            break;
    }

    return 1;
}

int main(void) {

    double a = 0, b = 0, c = 0;
    double x1 = 0, x2 = 0;

    int flag = scan(&a, &b, &c);
    printf("%lf %lf %lf\n", a, b, c);

    int nRoots = SqrEq(a, b, c, &x1, &x2);
    printf("%lf %lf %d\n", x1, x2, nRoots);

    flag = print(nRoots, x1, x2);

    return 0;
}
