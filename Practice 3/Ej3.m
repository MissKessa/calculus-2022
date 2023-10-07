syms x
%Perimeter=2x+2y=12
%y=6-x
%f=diagonal=(x^2+y^2)^(1/2)=

f=(2*x^2-12*x+36)^(1/2);
df=diff(f,x);
critical_points=solve(df,x); %sol=3
%Study the sign of df on the monotnicty intervals
subs(df,x,2)  %-
subs(df,x,4)  %+
%x=3 is the min. The square is x=3 and y=6-3=3