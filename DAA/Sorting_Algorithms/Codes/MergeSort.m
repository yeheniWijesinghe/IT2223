function sortedArray = mergeSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end

    mid = floor(length(array)/2);
    left = mergeSort(array(1:mid));
    right = mergeSort(array(mid+1:end));

    sortedArray = merge(left, right);
end


function merged = merge(left, right)
    merged = [];
    i = 1; j = 1;

    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged(end+1) = left(i); 
            i = i + 1;
        else
            merged(end+1) = right(j); 
            j = j + 1;
        end
    end

    % Append leftover elements
    if i <= length(left)
        merged = [merged left(i:end)];
    end
    if j <= length(right)
        merged = [merged right(j:end)];
    end
end


arr = [8,3,5,1,7,2];
disp("Unsorted Array: ");
disp(arr);
sortedArr = mergeSort(arr);
disp("Sorted Array");
disp(sortedArr);
