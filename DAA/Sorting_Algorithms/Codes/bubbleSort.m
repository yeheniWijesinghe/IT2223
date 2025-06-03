A = [64,34,25,12,22,11,90];
n = length(A);
for i=1:n-1
    for j=1:n-i
        if A(j) > A(j+1)
            temp = A(j);
            A(j) = A(j+1);
            A(j+1) = temp;
        end
    end
end
fprintf("Sorted array: ");
disp(A);