# pyplot_barplot.jl
#
#	Bar plot demonstration
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 1.1.0
# Created: 29.10.13
# Last Edit: 10.05.19

using PyPlot

#################
#  Create Data  #
#################
x = [1:1:50;]
y = 100*rand(50);

################
##  Bar Plot  ##
################
fig = figure("pyplot_barplot",figsize=(10,10))
subplot(211)
b = bar(x,y,color="#0f87bf",align="center",alpha=0.4)
axis("tight")
PyPlot.title("Vertical Bar Plot")
grid("on")
xlabel("X")
ylabel("Y")

subplot(212)
b = barh(x,y,color="#0f87bf",align="center",alpha=0.4)

axis("tight")
PyPlot.title("Horizontal Bar Plot")
grid("on")
xlabel("X")
ylabel("Y")

PyPlot.suptitle("Bar Plot Examples")
