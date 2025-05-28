B = [5,4,10,1,6,2];
n = length(B);

for i=2:n
    key = B(i);
    j = i-1;

    while j>=1 && B(j) > key
        B(j+1) = B(j);
        j = j - 1;
    end

    B(j+1) = key;  
end

disp('Sorted array is:');
disp(B);