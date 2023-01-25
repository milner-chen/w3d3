def exp_1(base, num)
    return 1 if num == 0
    base * exp_1(base, num - 1)
end

def exp_2(base, num)
    return 1 if num == 0
    result = exp_2(base, num)
end

p exp_1(2, 3)

# exp(b, n) = exp(b, n / 2) ** 2 
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2)