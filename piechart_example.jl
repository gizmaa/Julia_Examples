# pichart_example.jl
#
# Julia 0.3.2
# Created: 29.10.13
# Last Edit: 27.11.14

using PyPlot

#################
#  Create Data  #
#################
labels = ["Lager","Pilsner","Stout","IPA"]
colors = ["yellowgreen","gold","lightskyblue","lightcoral"]
sizes = NaN*zeros(4)
explode = zeros(length(sizes))
explode[round(length(sizes)*rand(1))] = 0.1
sizes = [15, 30, 45, 10]

###############
#  Pie Chart  #
###############
fig = figure("piechart_example",figsize=(10,10))
p = pie(sizes,labels=labels,shadow=true,startangle=90,explode=explode,colors=colors,autopct="%1.1f%%")

axis("equal")
title("Beer")