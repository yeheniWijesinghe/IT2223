n = input('Enter the number: ');

function f = factorial_n(n)
    if n==0 || n==1
        f = 1;
    else
        f = n*factorial_n(n-1);
    end
end

fact = factorial_n(n);

fprintf('Factorial of entered number: %d\n', fact);
