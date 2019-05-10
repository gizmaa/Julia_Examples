# pyplot_scatterplot.jl
#
#	Demonstrate scatter plots
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Created: 29.10.13
# Last Edit: 10.05.19

using PyPlot

#################
#  Create Data  #
#################
x = 100*rand(50)
y = 100*rand(50)
areas = 800*rand(50)

##################
#  Scatter Plot  #
##################
fig = figure("pyplot_scatterplot",figsize=(10,10))
ax = PyPlot.axes()
scatter(x,y,s=areas,alpha=0.5)

PyPlot.title("Scatter Plot")
xlabel("X")
ylabel("Y")
grid("on")
