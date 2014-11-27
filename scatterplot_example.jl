# scatterplot_example.jl
#
# Julia 0.3.2
# Created: 29.10.13
# Last Edit: 27.11.14

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
fig = figure("scatterplot_example",figsize=(10,10))
ax = axes()
scatter(x,y,s=areas,alpha=0.5)

title("Scatter Plot")
xlabel("X")
ylabel("Y")
grid("on")
