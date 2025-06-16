% Define nodes
nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

% Define edges and weights
s = [1 1 2 2 3 3];
t = [2 3 4 5 6 7];
weights = [5 3 2 4 6 1];

% Create directed graph
G = digraph(s, t, weights, nodes);

% Plot the graph
figure;
plot(G, 'Layout', 'layered', ...
    'Direction', 'down', ...
    'EdgeLabel', G.Edges.Weight);
title('Simple Tree with 3 Levels');

% Adjacency matrix (binary)
adjMatrix = adjacency(G) > 0;

% Initialize logical visited array
visited = false(1, numnodes(G));

% BFS queue initialization
queue = [];

% Start BFS from node 1
startNode = 1;
queue(end+1) = startNode; % enqueue
visited(startNode) = true;

disp('BFS Traversal Order:');

while ~isempty(queue)
    % Dequeue the first element
    currentNode = queue(1);
    queue(1) = [];

    % Display current node
    fprintf('%s ', G.Nodes.Name{currentNode});

    % Check all nodes manually for adjacency
    for node = 1:size(adjMatrix, 2)
        if adjMatrix(currentNode, node) == 1 && ~visited(node)
            visited(node) = true;
            queue(end+1) = node; % enqueue
        end
    end
end

fprintf('\n');
