def range(start, ending)
    return [] if ending < start
    return [ending] if ending == start 
    prev_range = range(start, ending - 1) 
    prev_range << ending                     
end

# p range(1, 5)

def sum_array(arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

def rec_sum_array(arr)
    return 0 if arr.empty?
    return arr[0] if arr.length == 1
    arr[0] + rec_sum_array(arr[1..-1])
end

# p rec_sum_array([1, 2, 3, 4])