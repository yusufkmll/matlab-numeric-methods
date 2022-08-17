% Hakkı Erencan KALYONCU
% 18xxxxxx

% Problem: Sort and find the following elements of an array
% - most frequent element (if exist)
% - greatest element
% - lowest element

arr_size = input('Enter the size of input array');
arr1 = zeros(arr_size);
arr2 = arr1(:,1);

for i=1:arr_size
    arr2(i) = input('Enter the elements');
end

max_element = max(arr2);
min_element = min(arr2);

sorted_arr = sort(arr2);

max_count = 1;
curr_count = 1;

for j=2:arr_size
    if sorted_arr(j) == sorted_arr(j-1)
        curr_count = curr_count + 1;
    else
        if curr_count > max_count
            max_count = curr_count;
            most_freq = sorted_arr(j-1);
        end
        curr_count = 1;
    end
end

if curr_count > max_count
    max_count = curr_count;
    most_freq = sorted_arr(arr_size);
end

disp('Sorted Array: '); disp(sorted_arr);
disp('Greatest: '); disp(max_element);
disp('Lowest: '); disp(min_element);
if max_count == 1
    disp('No frequent elements');
else
    disp('Most frequent: ');  disp(most_freq);
end


