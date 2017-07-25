# pyplot_3d_surf_plot.jl
#
#   3D Patch Plot
#
# Julia 0.6.0
# 20.07.17
# Last Edit: 25.07.17

# Reference: feima0011 - https://gist.github.com/gizmaa/7214002#gistcomment-2123919

using PyPlot

####################
##  Prepare Data  ##
####################
u = linspace(0.0,2pi,300);
v = linspace(0.0,pi,300);

lu = length(u);
lv = length(v);

x = zeros(lu,lv);
y = zeros(lu,lv);
z = zeros(lu,lv);

for uu=1:lu
	for vv=1:lv
		x[uu,vv]= cos(u[uu])*sin(v[vv]);
		y[uu,vv]= sin(u[uu])*sin(v[vv]);
		z[uu,vv]= cos(v[vv]);
	end
end

#######################
##  Generate Colors  ##
#######################
colors = rand(lu,lv,3)

############
##  Plot  ##
############
surf(x,y,z,facecolors=colors);
