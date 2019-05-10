# linecollection.jl
#
#   Line Collection plot example
#
# Julia 1.1.0
# 10.06.16
# Last Edit: 10.05.19

# Reference: David P. Sanders - https://groups.google.com/d/msg/julia-users/BGcEOZVw8YU/Oacy1O5zBQAJ

using PyPlot

####################
##  Prepare Data  ##
####################
# lines = Any array of tuples of floating point pairs

# First Segment Group
xs = [1.,3.,5.,0.]
ys = [2.,4.,.06,0.]
lines = Any[collect(zip(xs,ys))]
# lines = [(1.0,2.0),(3.0,4.0),(5.0,0.06),(0.0,0.0)]

# Second Segment Group
xs = [3.,4]
ys = [5.,6]
push!(lines,collect(zip(xs,ys)))

# Third Segment Group
xs = [8.,2]
ys = [2.,4]
push!(lines,collect(zip(xs,ys)))

##############
##  Colors  ##
##############
# Line segments will be plotted with the following order of colors and will
# cycle back to the beginning of the array when it has gone through all of them
c = Vector{Int}[[1,0,0],[0,1,0],[0,0,1]]

# Assemble everything into a LineCollection
line_segments = matplotlib.collections.LineCollection(lines,colors=c)

############
##  Plot  ##
############
fig = figure("Line Collection Example",figsize=(10,10))
ax = PyPlot.axes()
ax.add_collection(line_segments)
axis("image")
axis("tight")
