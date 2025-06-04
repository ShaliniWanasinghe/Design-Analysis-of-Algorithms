s = [1 1 2 3 4];
t = [2 3 4 4 5];
G = graph(s,t);

for node = 1 :numnodes(G)
    adj = neighbors(G,node);
    fprintf('Node %d is connected to: ',node);
    fprintf('%d', adj);
    fprintf('\n');
end