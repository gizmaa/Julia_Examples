# pyplot_boxplot.jl
#
#	Box plots demonstrations
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Created: 30.10.13
# Last Edit: 10.05.19

# NOTE: In Julia 0.5.0 the symbol colors aren't effected by settings

using PyPlot

# http://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.boxplot
# http://matplotlib.org/examples/pylab_examples/boxplot_demo.html

###################
##  Create Data  ##
###################
# Boxes with irregular amounts of data can
# be plotted by putting the data into bins in an ANY array.
num = 5
data = Array{Any}(undef,num) # Preallocate an ANY array for the storage of final values
for i=1:1:num
	num1 = round.(40rand(1)) .+ 10
	num1 = Int(num1[1])
	num2 = round.(20rand(1)) .+ 10
	num2 = Int(num2[1])
	num3 = round.(10rand(1)) .+ 1
	num3 = Int(num3[1])
	num4 = round.(10rand(1)) .+ 1
	num4 = Int(num4[1])
	
	spread = 100rand(num1)
	center = 50rand(num2)
	flier_high = 100rand(num3) .+ 100
	flier_low = -100rand(num4)
	data[i] = [spread;center;flier_high;flier_low]
end

################
##  Box Plot  ##
################
fig = figure("pyplot_boxplot",figsize=(10,10))
subplot(221)
boxplot(data) # Basic

subplot(222)
boxplot(data,1)

subplot(223)
boxplot(data,0,"gD") # (gD = green diamond)

subplot(224)
boxplot(data, # Each column/cell is one box
	notch=true, # Notched center
	whis=0.75, # Whisker length as a percent of inner quartile range
	widths=0.25, # Width of boxes
	vert=false, # Horizontal boxes
	sym="rs") # Symbol color and shape (rs = red square)

suptitle("Box Plot Examples")
