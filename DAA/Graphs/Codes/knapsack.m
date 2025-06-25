%Knapsac-0/1
weights=[10,20,30];
values=[60,100,120];
capacity=50;

%call the knapsak function
maxProfit=knapsack01(weights, values, capacity);

%display results
fprintf('Maximum profit(0/1 knapsack):%.2f\n',maxProfit);

%function
function maxProfit = knapsack01(weights, values, capacity)
n=length(weights);

%initialize dp table: (n+1)x(capacity+1)
dp = zeros(n+1,capacity+1);

%fill the table row by row
for i=1:n
    for w=0:capacity
        if weights(i)<=w
            %op1-include the item
            include = dp(i,w-weights(i)+1)+values(i);

            %op2-exclude the item
            exclude = dp(i,w+1);
            dp(i+1,w+1)=max(include,exclude);
        else
            %can't include the item
            dp(i+1,w+1)=dp(i,w+1);
        end
    end
end

%the result is in the bottom right cell
maxProfit=dp(n+1,capacity+1);
end

%Fractional knapsack
%function maxProfit = fractionalKnapsack(weights, values, capacity)

%number of items
%n = length(weights);
%end
