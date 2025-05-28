arr = [64, 25, 12, 22, 11];
n = length(arr);
disp(arr);
for i = 1:n-1
    min = i; 
    for j = i+1:n
        if arr(j) < arr(min)
            min = j;
        end
    end
    if min ~= i
        temp = arr(i);
        arr(i) = arr(min);
        arr(min) = temp;
    end
end
disp("Sorted array: ");
disp(arr);