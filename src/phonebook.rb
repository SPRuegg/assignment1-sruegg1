class PhoneBook
    def initialize
        @hashForNames = {}
	@hashForListedNumbers = {}
    end

    def add(name, number, is_listed)
        if (!number.match?(/^\d{3}-\d{3}-\d{4}$/)) then return false end
	if (@hashForNames[name]) then return false end
	if (@hashForListedNumbers[number] && is_listed) then return false end
	@hashForNames[name] = { number: number, is_listed: is_listed }
	if (is_listed) then
	    @hashForListedNumbers[number] = name
        end
	true
    end

    def lookup(name)
        raise Exception, "Not implemented"
    end

    def lookupByNum(number)
        raise Exception, "Not implemented"
    end

    def namesByAc(areacode)
        raise Exception, "Not implemented"
    end
end
