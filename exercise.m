% Graph
%1}Write a Matlab code to import a graph
%2.using imported data plpot th graph
%3.code to fin and display subgraph for the given nodes
%4. identify and diplay adjecent vertices for each node
%5.label edges of the graph
%6.label nodes of the graph
%7.code to colour the graph
%8.code to find the shortest path frpm 1to node 5

%s = [1 1 2 3 4];
%t = [2 3 4 4 5];
%G = graph(s,t);


% Clear environment and ensure no name conflicts
clear;
clc;

% 1. Define graph edges
s = [1 1 2 3 4];
t = [2 3 4 4 5];

% 2. Create graph object
G = graph(s, t);  % Make sure G is a graph class here

% 3. Plot the full graph
figure;
h = plot(G, 'Layout', 'force');
title('Original Graph');

% 4. Plot a subgraph for given nodes
subNodes = [1 2 4];
subG = subgraph(G, subNodes);
figure;
plot(subG, 'Layout', 'force');
title('Subgraph for Nodes 1, 2, 4');

% 5. Show adjacent vertices for each node
disp('Adjacent vertices:');
for i = 1:numnodes(G)
    adjVerts = neighbors(G, i);  % Only works if G is truly a graph
    fprintf('Node %d: [%s]\n', i, num2str(adjVerts'));
end

% 6. Label edges
h.EdgeLabel = arrayfun(@(a, b) sprintf('%d→%d', a, b), s, t, 'UniformOutput', false);

% 7. Label nodes
labelnode(h, 1:numnodes(G), cellstr(string(1:numnodes(G))));

% 8. Color each node distinctly
h.NodeColor = lines(numnodes(G));

% 9. Find and highlight shortest path from node 1 to node 5
[spath, dist] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to 5: %s\n', mat2str(spath));
highlight(h, spath, 'EdgeColor', 'r', 'LineWidth', 2);
