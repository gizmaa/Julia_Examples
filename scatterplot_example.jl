# Julia 0.2 RC1
# Created: 29.10.13
# Last Edit: 31.10.13

using PyPlot

close("all") # Close all currently open figures

#################
#  Create Data  #
#################
x = 100*rand(50)
y = 100*rand(50)
areas = 800*rand(50)

##################
#  Scatter Plot  #
##################
fig = figure(figsize=(10,10))
ax = axes()
scatter(x,y,s=areas,alpha=0.5)

title("Scatter Plot")
xlabel("X")
ylabel("Y")
grid("on")
