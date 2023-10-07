syms t
f=(exp(1/2-1/t))/t;
df=diff(f,t);
critical_points=solve(df,t); %sol=1

%Study the sign of df on the monotnicty intervals
subs(df,t,0.5) %+
subs(df,t,1.5) %-
%x=1 is a maximun and the max concentracion is:
subs(f,t,1) %e^(-1/2)
%f increase from (0,1) and decrease from (1,inf)

%Study concavity:
d2f=diff(f,t,2);
inflexion_points=solve(d2f,t); % 1/(2^(1/2) + 2) and -1/(2^(1/2) - 2)

%study sign of d2f
subs(d2f,t,0.2) %+
subs(d2f,t,1)   %-
subs(d2f,t,2)   %+
%f is concave down in {(1/(2^(1/2) + 2),-1/(2^(1/2) - 2)}
% and concave up in (0,(1/(2^(1/2) + 2))U (-1/(2^(1/2) - 2),inf)

%the limit
Right_limit=limit(f,t,0,'right'); %0
