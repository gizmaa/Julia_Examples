# pyplot_histogram.jl
#
#	Demonstrate plotting of histograms
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Created: 29.10.13
# Last Edit: 10.05.19

using PyPlot

#################
#  Create Data  #
#################
x = randn(1000) # Values
nbins = 50 # Number of bins

##########
#  Plot  #
##########
fig = figure("pyplot_histogram",figsize=(10,10)) # Not strictly required
ax = PyPlot.axes() # Not strictly required
h = plt.hist(x,nbins) # Histogram

grid("on")
xlabel("X")
ylabel("Y")
title("Histogram")
