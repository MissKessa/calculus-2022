%% a) Graph the function f.
syms x
f=x^2/(x^2-1);
fplot(f)
%% b) Approximate the function f by a parabola in a neighbourhood of 0.
g=taylor(f,x,0,'order',3); %parabolas are x^2
%% c) Find the area of the region bounded by the graph of f and the x-axis 
%between -1/2 y 1/2.
sol=double(solve(f,x)); %the only solution is 0
sol=sort(sol);
int1=int(f,x,0,-1/2);
int2=int(f,x,1/2,0);
areaf=int1+int2;
%% d) Find the area of the region enclosed by the graph of f and the
%parabola between -1/2 y 1/2.
sol2=double(solve(f-g,x)); %the only solution is 0
sol2=sort(sol2);
int12=int(f-g,x,0,-1/2);
int22=int(f-g,x,1/2,0);
areaf2=int12+int22;