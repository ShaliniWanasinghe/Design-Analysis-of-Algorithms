function sorted_array = quick_sort(array)
    if length(array) <= 1
        sorted_array = array;
        return;
    end

    pivot = array(end); 
    left = array(array < pivot);
    right = array(array > pivot);
    middle = array(array == pivot);

    sorted_array = [quick_sort(left), middle, quick_sort(right)];
end


array = [64, 34, 25, 12, 22, 11, 90];
fprintf("Original array:\n");
disp(array);

sorted_array = quick_sort(array);
fprintf("Sorted array:\n");
disp(sorted_array);
