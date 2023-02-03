def my_min(list)
    min = list.min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list) 

#O(n) time complexity



def my_min2(list)
    min = list.first
    (0...list.length).each do |idx|
        if min > list[idx]
            min = list[idx]
        end
    end

    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list) 


#O(n) time complexity


def largest_contiguous_subsum(list)
    arr = []
    sums = []

    (0...list.length).each do |i|
        (i...list.length).each do |j|
            # if j>i 
                arr << list[i..j]
            # end
        end
    end
    arr.each do |sub_arr|
        sums << sub_arr.sum 
    end
    sums.max
end
list = [5, 3, -7]
p largest_contiguous_subsum(list)


def largest_contiguous_subsum_2(list)
    current_sum = 0
    max_sum = 0
    
    
    (0...list.length-1).each do |i|
        if list[i+1] > 0
            current_sum += list[i]
        else
            if current_sum > max_sum
                max_sum = current_sum
                current_sum = 0
            end
        end
    end
    max_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum_2(list)
