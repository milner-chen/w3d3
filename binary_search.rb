def bsearch(arr, target)
    middle = ((arr.length - 1) / 2)
    return nil if arr.empty?
    return arr.index(target) if arr[middle] == target
    if target < arr[middle]
        bsearch(arr[0...middle], target)
    else
        bsearch(arr[middle + 1..-1], target)
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil