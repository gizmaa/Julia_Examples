# windrose_test.jl
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 0.3.2
# Last Edit: 09.12.14

using PyPlot

#################
#  Create Data  #
#################
theta = [0:2pi/30:2pi]
r = rand(length(theta))
width = 2pi/length(theta) # Desired width of each bar in the bar plot

##########################
##  Windrose Line Plot  ##
##########################
fig = figure("windrose_line",figsize=(10,10)) # Create a new figure
ax = axes(polar="true") # Create a polar axis
title("Wind Rose - Line")
p = plot(theta,r,linestyle="-",marker="None") # Basic line plot

dtheta = 10
ax[:set_thetagrids]([0:dtheta:360-dtheta]) # Show grid lines from 0 to 360 in increments of dtheta
ax[:set_theta_zero_location]("N") # Set 0 degrees to the top of the plot
ax[:set_theta_direction](-1) # Switch to clockwise
fig[:canvas][:draw]() # Update the figure

#########################
##  Windrose Bar Plot  ##
#########################
fig = figure("windrose_bar",figsize=(10,10)) # Create a new figure
ax = axes(polar="true") # Create a polar axis
title("Wind Rose - Bar")
b = bar(theta,r,width=width) # Bar plot

dtheta = 10
ax[:set_thetagrids]([0:dtheta:360-dtheta]) # Show grid lines from 0 to 360 in increments of dtheta
ax[:set_theta_zero_location]("N") # Set 0 degrees to the top of the plot
ax[:set_theta_direction](-1) # Switch to clockwise
fig[:canvas][:draw]() # Update the figure
