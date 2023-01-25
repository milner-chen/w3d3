def range(start, ending)
    return [] if ending < start
    return [ending] if ending == start 
    prev_range = range(start, ending - 1) 
    prev_range << ending                     
end

p range(1, 5)

