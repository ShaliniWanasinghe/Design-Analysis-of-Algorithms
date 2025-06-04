

array=[64,25,12,25,11]; %unsorted array
n=length(array); %find the length of the array

for i=1;n-1 %check the whole array
    minIndex=1; %assume i as the min index
    for j=1+1:n
        if array(j)<array(minIndex) %compare min value to the index j
            minIndex=j;
        end
    end
    if minIndex ~= i
        temp=array(i);
        array(i)=array(minIndex);
        array(minIndex)=temp;
    end
end

fprintf("Sorted array");
disp(array); %display the sorted array