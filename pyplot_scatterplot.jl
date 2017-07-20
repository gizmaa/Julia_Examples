# pyplot_scatterplot.jl
#
#	Demonstrate scatter plots
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 0.6.0
# Created: 29.10.13
# Last Edit: 20.07.17

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
ax = axes()
scatter(x,y,s=areas,alpha=0.5)

title("Scatter Plot")
xlabel("X")
ylabel("Y")
grid("on")
