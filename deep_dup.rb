def deep_dup(arr)
    # return [arr] if arr.is_a?(Array) == false
    return [] if arr.length == 0
    new_arr = []
    prev_dup = deep_dup(arr[1..-1])
    arr.each do |ele|
        new_arr += ele
    end
    new_arr
end

p deep_dup([["hello", "hi"], ["goodbye", "bye"]])