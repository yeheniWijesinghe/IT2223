%Calculator
num1 = input("Enter number 1: ");
num2 = input("Enter nmuber 2: ");
ope = input("Enter the operator(+,-,*,/): ","s");
result = 0;
switch(ope)
    case '+'
        result = num1 + num2;
        fprintf("Summation: %.2f\n",result)
    case '-'
        result = num1 - num2;
        fprintf("Substraction: %.2f\n",result)
    case '*'
        result = num1 * num2;
        fprintf("Multiplication: %.2f\n",result)
    case '/'
        if num2 ~= 0
            disp("Can't divide by 0")
        else
            result = num1 / num2;
            fprintf("Division: %.2f\n",result)
        end
end
