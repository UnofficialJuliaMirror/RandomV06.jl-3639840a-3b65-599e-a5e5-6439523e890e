using Test
using RandomV06

v6 = RandomV06

v6.srand(1)
@test v6.rand(1) == [0.23603334566204692]
r = v6.rand(5)
@test r[5] == 0.21096820215853596
@test v6.randperm(6) == [4; 1; 5; 3; 6; 2]

v6.srand(1)
@test v6.randcycle(5) == [4;1;5;3;2]

v6.srand(1)
@test v6.rand(1:100,5) == [99;47;60;70;74]

v6.randn(3,3)
v6.randn(3,3,3)

x = ones(5)
v6.rand!(x)
v6.randn!(x)
v6.randexp!(x)

v6.bitrand(3,4)
v6.randstring(4)
v6.randsubseq(collect(1:6),0.3)
x = []; v6.randsubseq!(x,collect(1:12),0.5)

x = collect(1:10)
v6.shuffle(x)
v6.shuffle!(x)

rng = v6.MersenneTwister(0);




