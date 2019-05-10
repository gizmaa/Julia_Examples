# pyplot_majorminor.jl
#
#	Demonstration of major and minor ticks
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# 19.12.13
# Last Edit: 10.05.19

using PyPlot

###################
#  Generate Data  #
###################
x = collect(0.0:0.01:100.0)
y = sin.(0.1pi*x).*exp.(-0.01x)

##########
#  Plot  #
##########
fig = figure("pyplot_majorminor",figsize=(10,10))
p = plot(x,y)
ax = gca()
xlabel("X Axis")
ylabel("Y Axis")
grid("on")
PyPlot.title("Major and Minor Ticks")

###########################
#  Set the tick interval  #
###########################
Mx = matplotlib.ticker.MultipleLocator(20) # Define interval of major ticks
f = matplotlib.ticker.FormatStrFormatter("%1.2f") # Define format of tick labels
ax.xaxis.set_major_locator(Mx) # Set interval of major ticks
ax.xaxis.set_major_formatter(f) # Set format of tick labels

mx = matplotlib.ticker.MultipleLocator(5) # Define interval of minor ticks
ax.xaxis.set_minor_locator(mx) # Set interval of minor ticks

My = matplotlib.ticker.MultipleLocator(0.5) # Define interval of major ticks
ax.yaxis.set_major_locator(My) # Set interval of major ticks

my = matplotlib.ticker.MultipleLocator(0.1) # Define interval of minor ticks
ax.yaxis.set_minor_locator(my) # Set interval of minor ticks

#########################
#  Set tick dimensions  #
#########################
ax.xaxis.set_tick_params(which="major",length=10,width=2,labelsize=16)
ax.xaxis.set_tick_params(which="minor",length=5,width=2)

fig.canvas.draw() # Update the figure
