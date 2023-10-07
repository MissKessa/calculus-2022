syms x;
f=x+1/(x-2); %Domain=R-{2}
pretty(f)
df=diff(f,x);
critical_points=solve(df,x); %Sol: 1 and 3

%Study the sign of df on the monotnicty intervals
subs(df,x,0)   %+
subs(df,x,1.5) %-
subs(df,x,2.5) %-
subs(df,x,4)   %+
%f is increasing in (-inf,1)U(3,inf). f is decreasing in (1,2)U(2,3)
%Local max: x=1. Local min: x=3

%Study concavity:
d2f=diff(f,x,2);
inflexion_points=solve(d2f,x); %no has
%study sign of d2f around x=2
subs(d2f,x,1) %-
subs(d2f,x,3) %+
%f is concave down in (-inf,2) and concave up in (2,inf)

%Asymptotes:
%vertical: x=2
Left_limit=limit(f,x,2,'left');  %-inf
Right_limit=limit(f,x,2,'right');%inf
%horizontal: NO
Limit_Rinf=limit(f,x,inf);  %inf
Limit_Linf=limit(f,x,-inf); %-inf
%oblique: y=x
Limit_Rm=limit(f/x,x,inf);          %1
Limit_Rn=limit(f-Limit_Rm*x,x,inf); %0

Limit_Lm=limit(f/x,x,-inf);          %1
Limit_Ln=limit(f-Limit_Lm*x,x,-inf); %0

%Points of interception:
solve(f,x) %(1,0)

fplot(f,[-3 7]);
hold on
fplot([2 2],[-3 7]);
fplot(x,[-3 7]);