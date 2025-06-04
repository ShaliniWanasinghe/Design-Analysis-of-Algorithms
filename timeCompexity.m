n=10000;

tic; %start timing

for i=1:n
    disp(i);
end

elapsedTime=toc; %end timing and store elapsed time

fprintf('Elapsed Time: %f seconds\n',elapsedTime); %f--> floating points