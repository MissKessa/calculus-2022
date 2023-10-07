%% a) Graph f. Choose a suitable interval to plot the function
syms x
f=1/((x^2)-4);
fplot(f, [-10 10])
%% b) Calculate the area of the enclosure bounded by the graph of f and the
% x-axis on the interval [3,+inf).
sol=double(solve(f,x)); %it doesn't have any real solution
sol=sort(sol);
int(f,x,3,inf)

%% c) Calculate the volume generated by revolving this region about the x-axis.

%% d) Calculate the volume generated by revolving the same region about the y-axis.
