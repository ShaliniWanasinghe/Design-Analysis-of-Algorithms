s = [1 2 2]; %start nodes
t = [2 3 4]; %end nodes
weights = [10 5 7];
G = graph(s,t, weights);
plot(G, 'EdgeLabel',G.Edges.Weight);
title('Weoghted Undirected Graph'); 