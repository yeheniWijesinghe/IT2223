n = input("Enter the number: ");

fac = 1;
for i=n:-1:1
    fac = fac * i;
end

fprintf("Factorial of entered number is: %d\n",fac);