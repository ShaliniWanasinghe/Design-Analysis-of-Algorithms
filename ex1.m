array= 1:1000;
index=10;

n=length(array);
found=false;
tic;
for i=1:n
    if array(i)==index
       found=true;
       index=i;
       break;
    end
end

if found 
    fprintf("The target element found at index:%d\n",index);

else
    fprintf("element not found\n");
end
elapsedTime=toc; 
fprintf('Elapsed time:%f seconds\n',elapsedTime);
toc;

n=length(array);
target=3;
low=1;
high=n;
mid=(low+high)/2;
found=false;
tic;
for i=1:n
if array(mid)==target
    found=true;
    index=i;
    break;
end
if target<array(mid)
    high=mid-1;

else
  low=mid+1;
end

end
if found
fprintf('target enement is at index:%d\n',index);

else
    fprintf('elemet not found\n');
end
toc;