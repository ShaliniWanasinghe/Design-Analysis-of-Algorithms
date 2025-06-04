function sorted_array = merge_sort(array)
    if length(array) <= 1
        sorted_array = array;
        return;
    end

    mid = floor(length(array) / 2);
    left_half = merge_sort(array(1:mid));
    right_half = merge_sort(array(mid+1:end));

    sorted_array = merge(left_half, right_half);
end

function merged_array = merge(left_half, right_half)
    merged_array = [];
    i = 1;
    j = 1;

    while i <= length(left_half) && j <= length(right_half)
        if left_half(i) < right_half(j)
            merged_array(end+1) = left_half(i);
            i = i + 1;
        else
            merged_array(end+1) = right_half(j);
            j = j + 1;
        end
    end

    while i <= length(left_half)
        merged_array(end+1) = left_half(i);
        i = i + 1;
    end

    while j <= length(right_half)
        merged_array(end+1) = right_half(j);
        j = j + 1;
    end
end


array = [64, 34, 25, 12, 22, 11, 90];
fprintf("Original array:\n");
disp(array);

sorted_array = merge_sort(array);
fprintf("Sorted array:\n");
disp(sorted_array);
