#=

rand_overload

=#

#using Random

import Random: srand, rand, rand!, 
randn, randn!, randexp, randexp!, 
bitrand, 
randstring, 
randsubseq,randsubseq!,
shuffle,shuffle!,
randperm, randcycle


V06 = RandomV06.V06
V07 = RandomV06.V07
Vcur = RandomV06.Vcur

srand(::Type{V06}, args...) = RandomV06.srand(args...)
rand(::Type{V06}, args...) = RandomV06.rand(args...)
rand!(::Type{V06}, args...) = RandomV06.rand!(args...)
randn(::Type{V06}, args...) = RandomV06.randn(args...)
randn!(::Type{V06}, args...) = RandomV06.randn!(args...)
randexp(::Type{V06}, args...) = RandomV06.randexp(args...)
randexp!(::Type{V06}, args...) = RandomV06.randexp!(args...)
bitrand(::Type{V06}, args...) = RandomV06.bitrand(args...)
randstring(::Type{V06}, args...) = RandomV06.randstring(args...)
randsubseq(::Type{V06}, args...) = RandomV06.randsubseq(args...)
randsubseq!(::Type{V06}, args...) = RandomV06.randsubseq!(args...)
shuffle(::Type{V06}, args...) = RandomV06.shuffle(args...)
shuffle!(::Type{V06}, args...) = RandomV06.shuffle!(args...)
randperm(::Type{V06}, args...) = RandomV06.randperm(args...)
randcycle(::Type{V06}, args...) = RandomV06.randcycle(args...)

srand(::Type{Vcur}, args...) = Random.srand(args...)
rand(::Type{Vcur}, args...) = Random.rand(args...)
rand!(::Type{Vcur}, args...) = Random.rand!(args...)
randn(::Type{Vcur}, args...) = Random.randn(args...)
randn!(::Type{Vcur}, args...) = Random.randn!(args...)
randexp(::Type{Vcur}, args...) = Random.randexp(args...)
randexp!(::Type{Vcur}, args...) = Random.randexp!(args...)
bitrand(::Type{Vcur}, args...) = Random.bitrand(args...)
randstring(::Type{Vcur}, args...) = Random.randstring(args...)
randsubseq(::Type{Vcur}, args...) = Random.randsubseq(args...)
randsubseq!(::Type{Vcur}, args...) = Random.randsubseq!(args...)
shuffle(::Type{Vcur}, args...) = Random.shuffle(args...)
shuffle!(::Type{Vcur}, args...) = Random.shuffle!(args...)
randperm(::Type{Vcur}, args...) = Random.randperm(args...)
randcycle(::Type{Vcur}, args...) = Random.randcycle(args...)


