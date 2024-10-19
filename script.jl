begin
    include("binary.jl")

    import .Binary

    println(Binary.binStrToInt("1100"))
    println(Binary.intToBinStr(97, 8))
end
