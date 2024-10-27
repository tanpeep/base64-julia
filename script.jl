begin
    include("binary.jl")
    include("base64.jl")

    import .Binary
    import .Base64

    println(Binary.binStrToInt("1100"))
    println(Binary.intToBinStr(97, 8))

    encode1 = Base64.encode("defabc")
    encode2 = Base64.encode("ab")
    encode3 = Base64.encode("abcde")
    println(encode1)
    println(encode2)
    println(encode3)

    println(Base64.decode(encode1))
    println(Base64.decode(encode1) == "defabc")

    println(Base64.decode(encode2))
    println(Base64.decode(encode2) == "ab")

    println(Base64.decode(encode3))
    println(Base64.decode(encode3) == "abcde")
end
