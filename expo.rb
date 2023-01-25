def exp_1(base, num)
    return 1 if num == 0
    base * exp_1(base, num - 1)
end

def exp_2(base, num)
    return 1 if num == 0
    if num.even?
        exp_2(base, num / 2) ** 2
    else
        base * (exp_2(base, (num - 1) / 2) ** 2)
    end
end

# p exp_2(2,0)
# p exp_2(2,3)


# p exp_1(2, 3)

# exp(b, n) = exp(b, n / 2) ** 2 
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2)