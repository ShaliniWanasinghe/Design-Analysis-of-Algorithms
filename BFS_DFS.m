
% Define the tree structure (as an undirected graph for traversal)
% For example, a simple tree:
%        1
%       / \
%      2   3
%         / \
%        4   5
s = [1 1 3 3];
t = [2 3 4 5];

G = graph(s, t);  % Use digraph(s, t) for a directed tree

% Visualize the tree
figure;
h = plot(G, 'Layout', 'layered');
title('Tree with 5 Nodes');
labelnode(h, 1:numnodes(G), string(1:numnodes(G)));

% ---------- BFS Traversal ----------
disp('Breadth-First Search (starting from node 1):');
bfsOrder = bfsearch(G, 1);
disp(bfsOrder');

% ---------- DFS Traversal ----------
disp('Depth-First Search (starting from node 1):');
dfsOrder = dfsearch(G, 1);
disp(dfsOrder');
