# RandomV06

This is a copy of Random.jl from version 0.6 of Julia that has been adapted to run in Julia 0.7.  The file was retrieved from https://github.com/JuliaLang/julia/blob/v0.6.4/base/random.jl, and hacked until it stopped producing errors or warnings in Julia 0.6.

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

