[![Build Status](https://travis-ci.org/danspielman/RandomV06.jl.svg?branch=master)](https://travis-ci.org/danspielman/RandomV06.jl)

# RandomV06

This is a copy of random.jl from version 0.6 of Julia that has been adapted to run in Julia 0.7.  The file was retrieved from https://github.com/JuliaLang/julia/blob/v0.6.4/base/random.jl, and hacked until it stopped producing errors or warnings in Julia 0.7.

The motivation is the observation that at least some parts of the pseudorandom generator from Julia 0.7, and we sometimes want to reproduce tests and examples generated in Julia 0.6.  Here are examples from Julia 0.6 and 0.7 that give different behavior:

~~~julia
julia> VERSION
v"0.6.4"

julia> srand(1); rand(1:10,3)
3-element Array{Int64,1}:
  9
  7
 10
~~~

~~~julia
julia> VERSION
v"0.7.0-beta2.0"

julia> srand(1); rand(1:10,3)
3-element Array{Int64,1}:
 3
 8
 2
~~~

# Installation

~~~julia
(v0.7) pkg> add https://github.com/danspielman/RandomV06.jl

~~~



# Using

After obtaining the package, just type `using RandomV06`.  You can then access the old functions under this module, like this:

~~~julia
julia> using RandomV06

julia> RandomV06.srand(1); RandomV06.rand(1:10,3)
3-element Array{Int64,1}:
  9
  7
 10
~~~

The module RandomV06 has its own version of `GLOBAL_RNG `, so it does not interact with the standard one:

~~~julia
julia> srand(1);

julia> RandomV06.srand(1);

julia> rand(1:10,3)
3-element Array{Int64,1}:
 3
 8
 2

julia> RandomV06.rand(1:10,3)
3-element Array{Int64,1}:
  9
  7
 10
~~~



So that you can more easily switch between the versions of functions like `rand` and `srand`, we find it convenient to overloaded these to add an initial argument that chooses the version you want.  Presently, we do this by including the file `src/rand_overload.jl:`

~~~julia
julia> pkgpath = Base.find_package("RandomV06");

julia> pkgdir = pkgpath[1:findlast(isequal('/'), pkgpath)];

julia> include(string(pkgdir,"rand_overload.jl"))
~~~



 To use version 0.6, the argument should be `V06`.  For version 0.7, it should be `V7`.  Alternatively, `Vcur` can be used to access the current version (in case it changes again in a later version of Julia).

~~~julia
julia> srand(V06,1); rand(V06, 1:10, 3)
3-element Array{Int64,1}:
  9
  7
 10

julia> srand(Vcur,1); rand(Vcur, 1:10, 3)
3-element Array{Int64,1}:
  9
  7
 10
~~~

Of course, the original versions without a prefix of `V06` or `V07` are still available.



# Bugs

RandomV06 does not handle `randjump`.

