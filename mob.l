%{
#include <stdio.h>
%}

%%
[6-9][0-9]{9}   { printf("Mobile number is valid\n"); }
.*              { printf("Invalid mobile number\n"); }
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter mobile number: ");
    yylex();
    return 0;
}
