
module RandomV06

    # using Random

    include("random_v06.jl")
    

    const V06 = Val{6}
    const V07 = Val{7}
    const Vcur = Val{7}

    # include("rand_overload.jl")

    #=
    export srand, rand, rand!, 
    randn, randn!, randexp, randexp!, 
    bitrand, 
    randstring, 
    randsubseq,randsubseq!,
    shuffle,shuffle!,
    randperm, randcycle
    =#
end