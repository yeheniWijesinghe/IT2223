arr=[3,5,9,11,13];
target=9;
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
fprintf("Elapsed time: %fseconds\n",endtime);