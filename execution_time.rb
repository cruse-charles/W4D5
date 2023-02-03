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
    
end
