syms x
syms a
f1=(x^5)*log(x);
%% a)
Right_limit=limit(f1,x,0,'right');%0
%a=0
f2=0;
%% b)
df1=diff(f1,x);
%df2=diff(f2,x); not doing because it is 0
critical_points=solve(df1,x); %Sol:exp(-1/5)

%Study the sign of df on the monotnicty intervals
subs(df1,x,0.5) %-
subs(df1,x,1)   %+
%x=exp(-1/5) is a absolute min (f(exp(-1/5)=-0.0736). And 0 is a local max (f(0)=0)
%f is decreasing in (0,exp(-1/5)) and increasing in (exp(-1/5),inf)

%% c)Study the monotonicity (done in b) and concavity of the function. Plot the function.
%Study concavity:
d2f=diff(f1,x,2);
inflexion_points=solve(d2f,x); %Sol: exp(-9/20)=0.6376
%study sign of d2f
subs(d2f,x,0.5) %-
subs(d2f,x,1)   %+
%f is concave down in (0, 0.6376) and concave up in (0.6376,inf)
