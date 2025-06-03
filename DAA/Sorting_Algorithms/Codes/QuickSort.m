
function sortedArray = quickSort(arr)
   
    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end
    
    pivot = arr(1);              
    left = arr(arr < pivot);    
    equal = arr(arr == pivot);  
    right = arr(arr > pivot);   
    
    
    sortedArray = [quickSort(left), equal, quickSort(right)];
end



unsortedArray = [5, 3, 8, 4, 2, 7, 1, 10];
fprintf('Original Array: ');
disp(unsortedArray);

sortedArray = quickSort(unsortedArray);

fprintf('Sorted Array: ');
disp(sortedArray);
