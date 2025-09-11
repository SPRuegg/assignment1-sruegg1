def fib(n)
    if (n < 0) then return nil end
    if (n == 0) then return [] end
    if (n == 1) then return [0] end
    arr = [0, 1]
    (n-2).times do
        arr << (arr[-1] + arr[-2])
    end
    arr
end

def isPalindrome(n)
    return true if n >= 0 && n < 10
    return false if n % 10 == 0

    reversed_half = 0
    while n > reversed_half
        reversed_half = (reversed_half * 10) + (n % 10)
        n /= 10
    end

    n == reversed_half || n == reversed_half / 10
end

def nthmax(n, a)
    raise Exception, "Not Implemented"
end

def freq(s)
    raise Exception, "Not Implemented"
end

def zipHash(arr1, arr2)
    raise Exception, "Not Implemented"
end

def hashToArray(hash)
    raise Exception, "Not Implemented"
end
