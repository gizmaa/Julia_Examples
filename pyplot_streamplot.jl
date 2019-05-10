# pyplot_streamplot.jl
#
#	Demonstrate Stream Plots
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Created: 10.10.17
# Last Edit: 10.05.19

using PyPlot

# http://matplotlib.org/examples/images_contours_and_fields/streamplot_demo_features.html

###################
##  Create Data  ##
###################
minval = -3
maxval = 3
steps = 100
X = repeat(range(minval,stop=maxval,length=steps)',steps)
Y = repeat(range(minval,stop=maxval,length=steps),1,steps)
U = -1 .- X.^2 .+ Y
V = 1 .+ X .- Y.^2
speed = sqrt.(U.^2 .+ V.^2)

####################
##  Stream Plots  ##
####################
fig = figure("pyplot_streamplot",figsize=(10,10))
subplot(311)
streamplot(X,Y,U,V)

subplot(312)
streamplot(X,Y,U,V,color=U,linewidth=2,cmap=PyPlot.cm.autumn)

subplot(313)
lw = 5 .* speed ./ maximum(speed) # Line Widths
streamplot(X,Y,U,V,density=0.6,color="k",linewidth=lw)

suptitle("Stream Plot Examples")
