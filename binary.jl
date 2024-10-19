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

    function intToBinStr(num::Int64, size::Int64=1)
        bin = ""
        while num > 0
            chr = Char((num%2)+48)
            bin  = chr * bin
            num ÷= 2
        end

        if size > length(bin)
            size -= length(bin)
            while size > 0
                bin = '0' * bin
                size -= 1
            end
        end

        return bin
    end

end