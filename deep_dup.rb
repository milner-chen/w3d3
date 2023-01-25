def deep_dup(arr)
    new_arr = []
    arr.each do |ele|
        if ele.is_a?(Array)
            new_arr << deep_dup(ele)
        else
            new_arr << ele
        end
    end
    new_arr

end

# p deep_dup([["hello", "hi"], ["goodbye", "bye"]])
