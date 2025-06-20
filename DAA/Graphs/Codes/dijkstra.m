%Define the weighted undirecte adjecency matrix
adjMatrix = [
    0 2 0 1 0;
    2 0 4 3 0;
    0 4 0 0 6;
    1 3 0 0 5;
    0 0 6 5 0
 ];

%Create and plot the graph
G = graph(adjMatrix);
plot(G);
title('Undirected Weighted graph');

% Number of nodes - count of nodes in 1st row
n = size(adjMatrix, 1);

%Distance of source node = 0, rest of the nodes = infinit
%Replace 0s with Infinit
for i = 1:n
    for j = 1:n
        if i ~= j && adjMatrix(i,j) ==0
            adjMatrix(i,j) = Inf;
        end
    end
end

% Start from node 1
startNode = 1;
% Distance from source to all nodes
distance = Inf(1, n);
% Distance to self is 0
distance(startNode) = 0; 
% Track visited nodes
visited = false(1, n);     

for i = 1:n
    minDist = Inf;
    u = -1;
    for j = 1:n
        if ~visited(j) && distance(j) < minDist
            minDist = distance(j);
            u =j;
        end
    end


if u == -1
    break;
end

visited(u) = true;

for v = 1:n
    if ~visited(v) && adjMatrix(u,v) ~= Inf
        if distance(u) + adjMatrix(u,v) < distance(v)
            distance(v) = distance(u) + adjMatrix(u,v);
        end
    end
end
end

%Display Results
fprintf("Shortest distance form the source: \n");
for i = 1:n
    fprintf("Vertex %d: %d\n",i,distance(i));
end
