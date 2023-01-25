def rec_fibonacci(n)
    return nil if n <= 0
    return [0, 1].take(n) if n <= 2
    
    prev_fib = rec_fibonacci(n - 1) 
    prev_fib << prev_fib[-1] + prev_fib[-2]
end

def fibonacci(n)
    return nil if n <= 0
    return [0, 1].take(n) if n <= 2
    
    new_arr = [0, 1]

    (2...n).each do |i|
        new_arr << new_arr[-1] + new_arr[-2]
    end

    new_arr
end

# p fibonacci(2)
p rec_fibonacci(10)