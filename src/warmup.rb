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
    raise Exception, "Not Implemented"
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
