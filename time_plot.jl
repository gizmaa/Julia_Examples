# time_plot.jl
#
# Julia 0.3.2
# Last Edit: 27.11.14

using Dates
using PyPlot

######################################
#  Generate an hour of data at 10Hz  #
######################################
x = [DateTime(2013,10,4):Millisecond(100):DateTime(2013,10,4,1)]
x = float64(x)/1000/60/60/24 # Convert time from milliseconds from day 0 to days from day 0
y = sin(2*pi*[0:2*pi/length(x):2*pi-(2*pi/length(x))])
dx = maximum(x) - minimum(x)
dy = maximum(y) - minimum(y)

y2 = 30*(1+sin(2*pi*[pi:2*pi/length(x):3*pi-(2*pi/length(x))]))-10
x2 = [minimum(x):dx/20:maximum(x)]
y2 = 10rand(21)-3
x3 = [minimum(x):dx/20:maximum(x)]
y3 = 10rand(21)-3

##########
#  Plot  #
##########
fig = figure("basic_annotation",figsize=(10,10)) # Create a figure and save its handle
#ax = axes([0.12,0.2,0.75,0.7])
ax = gca()
p = plot_date(x,y,linestyle="-",marker="None",label="Test Plot") # Plot a basic line
axis("tight") # Fit the axis tightly to the plot
title("U Component of Wind")
grid("on")
legend(loc="upper right",fancybox="true") # Create a legend of all the existing plots using their labels as names

##################
#  Text Styling  #
##################
font1 = ["family"=>"serif",
    "color"=>"darkred",
    "weight"=>"normal",
    "size"=>16]
xlabel("Time",fontdict=font1)
ylabel("Velocity (m/s)")
setp(ax[:get_yticklabels](),fontsize=24,color="blue") # Y Axis font formatting

#################
#  Arrow Tests  #
#################
# This arrows oriengt toward the x-axis, the more horizontal they are the more skewed they look
arrow(x[floor(length(x)/2)],
	0.4,
	0.0009,
	0.4,
	head_width=0.001,
	width=0.00015,
	head_length=0.07,
	overhang=0.5,
	head_starts_at_zero="true",
	facecolor="red")
arrow(x[floor(0.3length(x))]-0.25dx,
	y[floor(0.3length(y))]+0.25dy,
	0.25dx,
	-0.25dy,
	head_width=0.001,
	width=0.00015,
	head_length=0.07,
	overhang=0.5,
	head_starts_at_zero="true",
	facecolor="red",
	length_includes_head="true")

###########################
#  Text Annotation Tests  #
###########################
annotate("Look, data!",
	xy=[x[floor(length(x)/4.1)];y[floor(length(y)/4.1)]],
	xytext=[x[floor(length(x)/4.1)]+0.1dx;y[floor(length(y)/4.1)]+0.1dy],
	xycoords="data",
	arrowprops=["facecolor"=>"black"]) # Julia dictionary objects are automatically converted to Python object when they pass into a PyPlot function
annotate("Figure Top Right",
	xy=[1;1],
	xycoords="figure fraction",
	xytext=[0,0],
	textcoords="offset points",
	ha="right",
	va="top")
annotate(L"$\int x = \frac{x^2}{2} + C$",
	xy=[1;0],
	xycoords="axes fraction",
	xytext=[-10,10],
	textcoords="offset points",
	fontsize=30.0,
	ha="right",
	va="bottom")

fig[:autofmt_xdate](bottom=0.2,rotation=30,ha="right")
fig[:canvas][:draw]() # Update the figure
