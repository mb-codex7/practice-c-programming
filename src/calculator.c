#include <stdio.h>

int main(void)
{
    double first_number;
    double second_number;
    char operator;

    printf("Enter an expression (for example, 8 * 2): ");
    if (scanf("%lf %c %lf", &first_number, &operator, &second_number) != 3) {
        fprintf(stderr, "Invalid expression.\n");
        return 1;
    }

    switch (operator) {
        case '+':
            printf("Result: %g\n", first_number + second_number);
            break;
        case '-':
            printf("Result: %g\n", first_number - second_number);
            break;
        case '*':
            printf("Result: %g\n", first_number * second_number);
            break;
        case '/':
            if (second_number == 0.0) {
                fprintf(stderr, "Cannot divide by zero.\n");
                return 1;
            }
            printf("Result: %g\n", first_number / second_number);
            break;
        default:
            fprintf(stderr, "Unsupported operator. Use +, -, *, or /.\n");
            return 1;
    }

    return 0;
}
