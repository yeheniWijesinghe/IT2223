% MATLAB Graph Operations

% 1. Import the graph using source and destination data
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

% 2. Draw the graph
figure;
plot_G = plot(G);
title('Original Graph');

% 3. Find and display the subgraph for the given nodes
nodes_of_interest = [2, 3, 4];
G_sub = subgraph(G, nodes_of_interest);

figure;
plot(G_sub);
title('Subgraph with Nodes 2, 3, 4');

% 4. Identify and display the adjacent vertices for each node using adjacency matrix
disp('Adjacent vertices for each node:');
adjMatrix = adjacency(G); % Get adjacency matrix
for i = 1:numnodes(G)
    adjNodes = find(adjMatrix(i, :) > 0); % Find connected nodes
    fprintf('Node %d is adjacent to: %s\n', i, num2str(adjNodes));
end

% 5. Label the edges of the graph
% 6. Label the nodes of the graph
figure;
plot_G = plot(G);
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Label nodes
labeledge(plot_G, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), 1:numedges(G)); % Label edges
title('Graph with Node and Edge Labels');

% 7. Graph coloring (Random coloring for demonstration)
node_colors = randi([1 5], numnodes(G), 1); % Random color IDs from 1 to 5

figure;
plot_G = plot(G, 'NodeCData', node_colors, 'MarkerSize', 7, 'EdgeColor', 'k');
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Node labels
colorbar; % Show color scale
title('Graph Coloring');

% 8. Find the shortest path from node 1 to node 5
[spath, spath_length] = shortestpath(G, 1, 5);

fprintf('Shortest path from node 1 to node 5: %s\n', num2str(spath));
fprintf('Length of the shortest path: %d\n', spath_length);

% Highlight the shortest path on the colored graph
highlight(plot_G, spath, 'EdgeColor', 'r', 'LineWidth', 2);
title('Graph Coloring with Shortest Path Highlighted');
