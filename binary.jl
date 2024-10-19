module Binary

    function binStrToInt(str)
        val = 0
        degree = length(str) - 1
        factor = 2 ^ degree
        for bin in str 
            if bin == '1'
                val += factor
            end
            factor ÷= 2
        end
        return val
    end

end