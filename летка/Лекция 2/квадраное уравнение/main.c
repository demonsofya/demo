#include <stdio.h>
#include "test.h"
#include "input.h"
#include "output.h"
#include "solving.h"
#include "constants.h"
#include "structs.h"

extern int Global;

int main(void) {

    Coeffs input_coeffs = {0, 0, 0};
    Roots solved_roots = {};
    int flag = Test();

    flag = scan(&input_coeffs);

    printf("%lg %lg %lg", input_coeffs.a, input_coeffs.b, input_coeffs.c);

    solved_roots.number_of_roots = SqrEq(&input_coeffs, &solved_roots);

    flag = print(&solved_roots);

    return 0;
}
