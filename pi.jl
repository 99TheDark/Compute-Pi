# 1 million
DEFAULT_PRECISION = 1_000_000

# 1 - 1 / 3 + 1 / 5 - 1 / 7 + …
function leibniz(precision=DEFAULT_PRECISION)
    total = 0
    for i in range(length=precision)
        val = 1 / (i * 2 - 1)
        if i % 2 == 0
            total -= val
        else
            total += val
        end
    end
    return total * 4
end

# 3 + 4 / (2 * 3 * 4) - 4 / (4 * 5 * 6) + 4 / (6 * 7 * 8) - …
function nilakantha(precision=DEFAULT_PRECISION)
    total = 3
    for i in range(length=precision)
        n = 2 * i
        val = 4 / (n * (n + 1) * (n + 2))
        if i % 2 == 0
            total -= val
        else
            total += val
        end
    end
    return total
end

@time println(leibniz())
@time println(nilakantha())