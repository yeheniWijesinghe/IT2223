%Krushkals algortim
%no of nodes
n = 4;

%list of edges[n1, n2, weight]
edges = [
    1 2 1;
    1 3 3;
    1 4 2;
    2 4 4;
    3 4 5
];

%total no of edges
numEdges = size(edges,1);

%1.sort the edges by weight(bubble sort)
for i = 1:numEdges-1
    for j = 1:numEdges-1
        if(edges(j,3)>edges(j+1,3))
            temp = edges(j,:);
            edges(j,:) = edges(j+1,:);
            edges(j+1,:) = temp;
        end
    end
end
%initialize MST adjacency list(empty)
MST_adj=cell(n,1);
%store MST edges
mst=[];
total_weight = 0;

%DFS function to check connectivity
function found = dfs(current, target, visited, MST_adj)
%current-the node currently beign visited
%target-the node we want to reach
%visited-logical array to keep track of visited nodes durin the search
%MST_adj-adjacency list of the current MST graph
if current==target
    found=true;
    return;
end
visited(current)=true;
found=false;
neighbors=MST_adj{current};
%get neighbors(connected nodes) of the current node from the adjacency list

    for k=1:length(neighbors)
        neigh = neighbors(k);
        if ~visited(neigh)
            found = dfs(neigh, target, visited, MST_adj);
            if found
                return;
            end
        end
    end
end

%2-build MST with DFS cycle detection
for i=1:numEdges
    u = edges(i,1);%starting node
    v = edges(i,2);%ending node
    w = edges(i,3);%weight of the edge

    %check if u and v are already connected in MST
    visited = false(1,n);

    %initialize a logical array visited of size number of node, all false
    if isempty(MST_adj{u})
        connected = false;
    else
        connected = dfs(u, v, visited, MST_adj);
    end

    if ~connected
        %add edges to MST
        mst = [mst; u v w];
        total_weight = total_weight + w;

        %update MST adjacency list(undirected)
        MST_adj{u} = [MST_adj{u} v];
        MST_adj{v} = [MST_adj{v} u];
    end
end

%display MST in console
disp('Edges in MST:');
disp('Node1 Node2 Weight');
disp(mst);
fprintf('Total weight=%d\n',total_weight);

%3-plot the MST graphically
G_mst = graph(mst(:,1),mst(:,2),mst(:,3));%create graph from MST edges
figure;
plot(G_mst,'EdgeLabel',G_mst.Edges.Weight);
title('Minimum Spanning Tree(MST)');
