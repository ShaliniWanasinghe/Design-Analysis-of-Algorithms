a=[3,5,7,9,11,13];
index=9;
found=false;
tic;
for i=1:length(a)
    if a(i)==index
        found=true;
        index=i;
        break;
    end
end

    if found
        fprintf('found at index:%d\n',index);
    else
        fprintf('not found!');
    end

    toc;