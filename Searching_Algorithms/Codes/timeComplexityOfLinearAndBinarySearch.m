%Create array with 1000 numbers.
%Use tic/toc to maesure time for linear and binary search
%Compare results

arr = 1:1000;
target = 988;

%Linear Search
l=length(arr);
tic;
for i=1:l
    if arr(i)==target
        found=true;
        index=i;
        break;
    else
        found=false;
   
    end
end

if(found)
    disp("Target found in index: "+index);
else
    disp("Target not found in the array!");
end

endtime=toc;
fprintf("Elapsed time of linear search: %fseconds\n",endtime);

%Binary Search
low = 1;
high = length(arr);
found = false;
tic;
while (low <= high)
    mid = round((low + high) / 2);  % Ensure mid is an integer also floor() can use

    if arr(mid) == target
        fprintf("Target found at index %d\n", mid);
        found = true;
        break;
    elseif target > arr(mid)
        low = mid + 1;
    else
        high = mid - 1;
    end
end

if ~found
    fprintf("Target not found in the array!\n");
end
endtime=toc;
fprintf("Elapsed time binary search: %fseconds\n",endtime);