# pyplot_axis_placement.jl
#
#	Demonstrate the placement of axes
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# 20.12.13
# Last Edit: 10.05.19

using PyPlot

###################
#  Generate Data  #
###################
x = collect(0:pi/50:2pi)
y = sin.(x)

###############
#  Plot Data  #
###############
fig = figure("pyplot_axis_placement",figsize=(10,10))
subplot(211)
p = plot(x,y)
ax = gca()
axis("tight")
ax.spines["top"].set_visible(false) # Hide the top edge of the axis
ax.spines["right"].set_visible(false) # Hide the right edge of the axis
ax.spines["left"].set_position("center") # Move the right axis to the center
ax.spines["bottom"].set_position("center") # Most the bottom axis to the center
#ax.spines["left"].set_smart_bounds(true)
ax.xaxis.set_ticks_position("bottom") # Set the x-ticks to only the bottom
ax.yaxis.set_ticks_position("left") # Set the y-ticks to only the left

subplot(212)
p = plot(x,y)
ax2 = gca()
axis("tight")
ax2.spines["top"].set_visible(false) # Hide the top edge of the axis
ax2.spines["right"].set_visible(false) # Hide the right edge of the axis
ax2.xaxis.set_ticks_position("bottom")
ax2.yaxis.set_ticks_position("left")
ax2.spines["left"].set_position(("axes",-0.03)) # Offset the left scale from the axis
ax2.spines["bottom"].set_position(("axes",-0.05)) # Offset the bottom scale from the axis
xlabel("X Axis")
ylabel("Y Axis")

suptitle("Axis Placement")
