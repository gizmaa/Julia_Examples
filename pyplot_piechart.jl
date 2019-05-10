# pyplot_piechart.jl
#
#	Demonstrate plotting of pie charts
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Created: 29.10.13
# Last Edit: 10.05.19

using PyPlot

#################
#  Create Data  #
#################
labels = ["Lager";"Pilsner";"Stout";"IPA"]
colors = ["yellowgreen";"gold";"lightskyblue";"lightcoral"]
sizes = NaN*zeros(4)
explode = zeros(length(sizes))
explode[2] = 0.1 # Move slice 2 out by 0.1
sizes = [15; 30; 45; 10]
font = Dict("fontname"=>"Sans","weight"=>"semibold")

###############
#  Pie Chart  #
###############
fig = figure("pyplot_piechart",figsize=(10,10))
p = pie(sizes,
		labels=labels,
		shadow=true,
		startangle=90,
		explode=explode,
		colors=colors,
		autopct="%1.1f%%",
		textprops=font)

axis("equal")
PyPlot.title("Beer")
