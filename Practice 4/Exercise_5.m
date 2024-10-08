%f(x) = sin x + cos x
%a) Calculate the volume of the solid generated by revolving the region
%between the curve and the x-axis on the interval [0; pi/2], about the x-axis.
%b) Calculate the volume of the solid generated by revolving the region 
% between the curve and the x-axis on the interval [0; pi/2], about the y-axis.
%% a)
syms x
f=sin(x)+ cos(x);
volume=abs(pi*int(f^2,pi/2,0));
%% b)
syms x
f=sin(x)+ cos(x);
volume2=abs(2*pi*int(x*f,pi/2,0));