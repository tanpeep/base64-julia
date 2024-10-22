module Base64

    include("binary.jl")

    import .Binary

    function encode(str)
        res = ""
        binStr = ""
        i = 1
        for chr in str 
            binStr = binStr * Binary.intToBinStr(Int(chr), 8)
            val = Binary.binStrToInt(binStr[i:i+5])
            res = res * mapIntToEncodedChar(val)
            i += 6
        end

        while i < length(binStr) 
            val = Binary.binStrToInt(binStr[i:i+5])
            res = res * mapIntToEncodedChar(val)
            i += 6
        end

        return res
    end

    function mapIntToEncodedChar(val)
        if val == 62 
            return '+'
        elseif val == 63
            return '/'
        elseif val <= 25 
            return Char(val + 65)
        elseif val <= 51
            return Char(val + 71)
        else 
            return Char(val - 4)
        end
    end

end