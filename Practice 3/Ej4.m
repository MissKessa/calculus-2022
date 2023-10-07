syms x;
f=1/(x^2+1); %Domain=R
pretty(f)
df=diff(f,x);
critical_points=solve(df,x); %Sol:0

%Study the sign of df on the monotnicty intervals
subs(df,x,-1)   %+
subs(df,x,1)    %-
%f is increasing in (-inf,0). f is decreasing in (0)U(inf)
%Local max: x=0

%Study concavity:
d2f=diff(f,x,2);
inflexion_points=solve(d2f,x); %Sol: -3^(1/2)/3 and  3^(1/2)/3
%study sign of d2f
subs(d2f,x,-0.6) %+
subs(d2f,x,0)    %-
subs(d2f,x,0.6)  %+
%f is concave down in (-3^(1/2)/3, 3^(1/2)/3) and 
%concave up in (-inf,-3^(1/2)/3) U (3^(1/2)/3, inf)
%% Approximation
g=taylor(f,x,0,'order',3); %Aproximation to a parabola (2)

fplot(f,[-3 3]);
hold on
fplot(g,[-3 3]);