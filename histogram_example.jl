# histogram_example.jl
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 0.3.2
# Created: 29.10.13
# Last Edit: 09.12.14

using PyPlot

#################
#  Create Data  #
#################
x = randn(1000) # Values
nbins = 50 # Number of bins

##########
#  Plot  #
##########
fig = figure("histogram_example",figsize=(10,10)) # Not strictly required
ax = axes() # Not strictly required
h = PyPlot.plt.hist(x,nbins) # Histogram, PyPlot.plt required to differentiate with conflicting hist command

grid("on")
xlabel("X")
ylabel("Y")
title("Histogram")
