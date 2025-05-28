A = [3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
low = 1;
high = length(A);
target = 42;
found = false;

while (low <= high)
    mid = round((low + high) / 2);  % Ensure mid is an integer also floor() can use

    if A(mid) == target
        fprintf("Target found at index %d\n", mid);
        found = true;
        break;
    elseif target > A(mid)
        low = mid + 1;
    else
        high = mid - 1;
    end
end

if ~found
    fprintf("Target not found in the array!\n");
end
