# pyplot_quiverplot.jl
#
#	Demonstrate Quiver Plots
#
# gizmaa (https://gist.github.com/gizmaa/7214002)
# Julia 0.6.0
# Created: 10.10.17
# Last Edit: 10.10.17

# http://matplotlib.org/gallery/images_contours_and_fields/quiver_simple_demo.html#sphx-glr-gallery-images-contours-and-fields-quiver-simple-demo-py

# Note: See the following link for more information on the quiverkey parameters
#	http://matplotlib.org/api/_as_gen/matplotlib.pyplot.quiverkey.html?highlight=quiverkey#matplotlib.pyplot.quiverkey

using PyPlot

###################
##  Create Data  ##
###################
R = -10:1:9
X = [R;]'
Y = [R;]'
U = repmat([R;]',length(X))
V = repmat([R;],1,length(Y))

###################
##  Quiver Plot  ##
###################
fig = figure("pyplot_quiverplot",figsize=(10,10))
q = quiver(X,Y,U,V)
ax = gca()
ax[:quiverkey](q,X=0.07,Y = 0.05, U = 10,coordinates="figure", label="Quiver key, length = 10",labelpos = "E")
title("Quiver Plot Example")
