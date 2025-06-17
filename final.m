% Clear workspace
clear;
clc;

% -------------------------------
% 1. Define the Adjacency Matrix
% -------------------------------
% For a 5-node graph: adjacency(i,j) = 1 means an edge from node i to j
adjMatrix = [0 1 1 0 0;
             1 0 0 1 0;
             1 0 0 1 1;
             0 1 1 0 1;
             0 0 1 1 0];

% -------------------------------
% 2. Create Graph from Matrix
% -------------------------------
G = graph(adjMatrix);  % use digraph() for directed graphs

% -------------------------------
% 3. Visualize the Graph
% -------------------------------
figure;
h = plot(G, 'Layout', 'force');
title('Graph from Adjacency Matrix');
labelnode(h, 1:numnodes(G), string(1:numnodes(G)));

% -------------------------------
% 4. Initialize Visited Nodes
% -------------------------------
numNodes = size(adjMatrix, 1);
visited = false(1, numNodes);  % By default, all nodes unvisited

% -------------------------------
% 5. Function to Find Next Unvisited Neighbor
% -------------------------------
function next = getNextUnvisitedNode(current, adjMatrix, visited)
    neighbors = find(adjMatrix(current, :) > 0);  % find connected nodes
    for i = 1:length(neighbors)
        if ~visited(neighbors(i))
            next = neighbors(i);
            return;
        end
    end
    next = -1;  % Return -1 if no unvisited neighbor found
end

% -------------------------------
% 6. Example Traversal
% -------------------------------
% Start from node 1
current = 1;
fprintf('Traversal Path:\n');
while current ~= -1
    fprintf('Visited Node: %d\n', current);
    visited(current) = true;  % Mark as visited
    current = getNextUnvisitedNode(current, adjMatrix, visited);
end
