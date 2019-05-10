# pyplot_errorbar.jl
#
#	Demonstrate error bar plots
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Last Edit: 10.05.19

using PyPlot

###################################
#  Generate a few points of data  #
###################################
x = collect(DateTime(2013,10,4):Dates.Day(1):DateTime(2013,10,9))
y = [0.9;0.75;0.5;0.4;0.35;0.3]
uppererror = [0.05 0.05 0.05 0.03 0.15 0.05;]
lowererror = [0.15 0.2 0.05 0.1 0.05 0.05;]
errs = [lowererror;uppererror]

println("From " * string(x[1]) * " to " * string(x[end]))

x = Dates.value.(x)/1000/60/60/24 # Convert time from milliseconds from day 0 to days from day 0

##########
#  Plot  #
##########
fig = figure("pyplot_errorbar",figsize=(10,10)) # Create a new figure
p = plot_date(x,y,linestyle="-",marker="None",label="Base Plot") # Basic line plot
pe = errorbar(x,y,yerr=errs,fmt="o") # Plot irregular error bars
axis("tight")
ax = gca() # Get the handle of the current axis
PyPlot.title("Error Bar Example")
xlabel("Time")
ylabel("Some Data")
grid("on")

fig.autofmt_xdate(bottom=0.2,rotation=30,ha="right") # Autoformat the time format and rotate the labels so they don't overlap
fig.canvas.draw() # Update the figure
