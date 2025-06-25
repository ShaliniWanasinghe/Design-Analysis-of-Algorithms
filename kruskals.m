% Number of nodes
n = 4;

% List of edges [start_node end_node weight]
edges = [
    1 2 1;
    1 3 3;
    1 4 2;
    2 4 4;
    3 4 5
];

numEdges = size(edges, 1); % total number of edges

% Step 1: Sort edges using bubble sort
for i = 1:numEdges-1
    for j = 1:numEdges-i
        if edges(j,3) > edges(j+1,3)
            temp = edges(j,:);
            edges(j,:) = edges(j+1,:);
            edges(j+1,:) = temp;
        end
    end
end

% Initialize MST adjacency list (empty cell array)
MST_adj = cell(n,1);
mst = []; % store MST edges
total_weight = 0;

% Step 2: DFS function to check connectivity (cycle detection)
function found = dfs(current, target, visited, MST_adj)
%current- the node currenbtly being visited
%target-the node we want to reach
%visited-logical array to keep tack of visited nodes during the search
%MST adj- adajency list of the current MST graph (which nodes connect to
%which)
    if current == target
        found = true;
        return;
    end
    visited(current) = true;
    found = false;
    neighbours = MST_adj{current};
    %Get all neighbours (connected nodes) of the current node from the adajency list

    for k = 1:length(neighbours)
        neigh = neighbours(k);
        if ~visited(neigh)
            found = dfs(neigh, target, visited, MST_adj);
            if found
                return;
            end
        end
    end
end

% Step 3: Build MST using DFS to avoid cycles
for i = 1:numEdges
    u = edges(i,1);%starting node
    v = edges(i,2);%ending node
    w = edges(i,3); %weight of the edge
    %check if u and v are already connected in MST
    visited = false(1,n);
    %Initialize a logical array visited of size number 
    if isempty(MST_adj{u})
        connected = false;
    else
        connected = dfs(u, v, visited, MST_adj);
    end
    
    if ~connected
          %Add edge to MST
        mst = [mst; u v w];
        total_weight = total_weight + w;
          %Update MST adajacency list(undirected)
        MST_adj{u} = [MST_adj{u}, v];
        MST_adj{v} = [MST_adj{v}, u];
    end
end

% Display MST
disp('Edges in MST:');
disp('Node1 Node2 Weight');
disp(mst);
fprintf('Total weight = %d\n', total_weight);

% Visualize MST
G_mst = graph(mst(:,1), mst(:,2), mst(:,3));
figure;
plot(G_mst, 'EdgeLabel', G_mst.Edges.Weight);
title('Minimum Spanning Tree (MST)');
