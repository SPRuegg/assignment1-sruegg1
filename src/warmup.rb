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
    if (n < 0) then return nil end
    if (n > a.length - 1) then return nil end
    if (a.length <= 0) then return nil end
    a = a.sort
    a[-(n+1)]
end

def freq(s)
    if (s.length == 0) then return "" end
    if (s.length <= 2) then return s[0] end # Assumption that there can be no ties, means a two character string, has the same letter, also includes one character string
    lookup = []
    maxCount = 0
    mostFreq = ""
    (s.length).times do |i|
        asciiVal = s[i].ord
        lookup[asciiVal] = lookup[asciiVal].to_i + 1 # to_i in case it is nil
        if (lookup[asciiVal] > maxCount) then 
            maxCount = lookup[asciiVal] 
            mostFreq = s[i]
        end
    end
    mostFreq
end

def zipHash(arr1, arr2)
    if (arr1.length != arr2.length) then return nil end
    hash = {}
    (arr1.length).times do |i|
        hash[arr1[i]] = arr2[i]
    end
    hash
end

def hashToArray(hash)
    raise Exception, "Not Implemented"
end
