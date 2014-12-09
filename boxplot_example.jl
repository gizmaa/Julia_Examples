# boxplot_example.jl
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 0.3.2
# Created: 30.10.13
# Last Edit: 09.12.14

using PyPlot

# http://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.boxplot
# http://matplotlib.org/examples/pylab_examples/boxplot_demo.html

###################
##  Create Data  ##
###################
# Boxes with irregular amounts of data can
# be plotted by putting the data into bins in an ANY array.
num = 5
data = Array(Any,num) # Preallocate an ANY array for the storage of final values
for i=1:1:num
	num1 = round(40rand(1)) + 10
	num1 = int(num1[1])
	num2 = round(20rand(1)) + 10
	num2 = int(num2[1])
	num3 = round(10rand(1)) + 1
	num3 = int(num3[1])
	num4 = round(10rand(1)) + 1
	num4 = int(num4[1])
	
	spread = 100rand(num1)
	center = 50rand(num2)
	flier_high = 100rand(num3) + 100
	flier_low = -100rand(num4)
	data[i] = [spread,center,flier_high,flier_low]
end

################
##  Box Plot  ##
################
fig = figure("boxplot_example",figsize=(10,10))
subplot(221)
boxplot(data) # Basic

subplot(222)
boxplot(data,1)

subplot(223)
boxplot(data,0,"gD")

subplot(224)
boxplot(data, # Each column/cell is one box
	notch=true, # Notched center
	whis=0.75, # Whisker length as a percent of inner quartile range
	widths=0.25, # Width of boxes
	vert=false, # Horizontal boxes
	sym="rs") # Symbol color and shape (rs = red square)

suptitle("Box Plot Examples")
