begin
    include("binary.jl")
    include("base64.jl")

    import .Binary
    import .Base64

    println(Binary.binStrToInt("1100"))
    println(Binary.intToBinStr(97, 8))

    println(Base64.encode("defabc"))
end
