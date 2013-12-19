# Julia 0.2 RC1
# Last Edit: 31.10.13

using PyPlot

close("all") # Close all the currently open figures

#####################
##  2x2 Plot Grid  ##
#####################
fig = figure(figsize=(10,10)) # Create a new blank figure
#fig[:set_figheight](7) # Doesn't work
#fig[:set_figwidth](3) # Doesn't work
subplot(221) # Create the 1st axis of a 2x2 arrax of axes
grid("on") # Create a grid on the axis
title("221") # Give the most recent axis a title
subplot(222,polar="true") # Create a plot and make it a polar plot, 2nd axis of 2x2 axis grid
title("222")
ax = subplot(223,polar="true") # Create a plot and make it a polar plot, 3rd axis of 2x2 axis grid
ax[:set_theta_zero_location]("N") # Set 0 degrees to the top of the plot
ax[:set_theta_direction](-1) # Switch the polar plot to clockwise
title("223")
subplot(224) # Create the 4th axis of a 2x2 arrax of axes
xlabel("This is an X axis")
ylabel("This is a y axis")
title("224")
fig[:canvas][:draw]() # Update the figure
suptitle("2x2 Subplot")

###################
##  Column Plot  ##
###################
fig = figure(figsize=(10,10))
subplot(311) # Create the 1st axis of a 3x1 array of axes
title("311")
subplot(312) # Create the 2nd axis of a 3x1 arrax of axes
ax = gca() # Get the handle of the current axis
ax[:set_yscale]("log") # Set the y axis to a logarithmic scale
grid("on")
ylabel("Log Scale")
title("312")
subplot(313) # Create the 3rd axis of a 3x1 array of axes
ax = gca()
ax[:set_xscale]("log") # Set the x axis to a logarithmic scale
xlabel("Log Scale")
title("313")
fig[:canvas][:draw]() # Update the figure
suptitle("3x1 Subplot")

###################
##  Shared Axis  ##
###################
fig = figure(figsize=(10,10))
subplots_adjust(hspace=0.0) # Set the vertical spacing between axes
subplot(311) # Create the 1st axis of a 3x1 array of axes
ax1 = gca()
ax1[:set_xscale]("log") # Set the x axis to a logarithmic scale
setp(ax1[:get_xticklabels](),visible=false) # Disable x tick labels
grid("on")
title("Title")
yticks(0.1:0.2:0.9) # Set the y-tick range and step size, 0.1 to 0.9 in increments of 0.2
ylim(0.0,1.0) # Set the y-limits from 0.0 to 1.0
subplot(312,sharex=ax1) # Create the 2nd axis of a 3x1 array of axes
ax2 = gca()
ax2[:set_xscale]("log") # Set the x axis to a logarithmic scale
setp(ax2[:get_xticklabels](),visible=false) # Disable x tick labels
grid("on")
ylabel("Log Scale")
yticks(0.1:0.2:0.9)
ylim(0.0,1.0)
subplot(313,sharex=ax2) # Create the 3rd axis of a 3x1 array of axes
ax3 = gca()
ax3[:set_xscale]("log") # Set the x axis to a logarithmic scale
grid("on")
xlabel("Log Scale")
yticks(0.1:0.2:0.9)
ylim(0.0,1.0)
fig[:canvas][:draw]() # Update the figure
suptitle("3x1 Shared Axis")