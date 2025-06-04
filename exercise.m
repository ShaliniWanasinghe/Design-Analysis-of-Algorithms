
s = [1 1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 6 8 9 10 7];
t = [6 2 11 10 5 6 11 7 3 7 11 4 8 8 11 5 9 9 10 11 11 11 11 11 11];
G = graph(s, t);


h = plot(G, 'Layout', 'force', 'LineWidth', 2.5);
highlight(h, 1:11, 'NodeColor', 'blue');

highlight(h, 11, 1:10, 'EdgeColor', 'magenta');

highlight(h, [1 1 2 3 4], [2 5 3 4 5], 'EdgeColor', 'green');


highlight(h, [1 6 2 7 3 8 4 9 5 10], [6 2 7 3 8 4 9 5 10 1], 'EdgeColor', 'red');


title('Multi-layer Graph with Colored Patterns');
