n = input('Enter the number: ');

function fact = factorial(n)
    fact = 1; 
    for i = 1:n
        fact = fact * i; 
    end
end

fact = factorial(n);

fprintf('Factorial of entered number: %d\n', fact);


