syms x
f=x*sin(x);
%% order 2
a=taylor(f,x,0,'order',3);
%% order 4
b=taylor(f,x,0,'order',5);
%% order 6
c=taylor(f,x,0,'order',7);
%% order 8
d=taylor(f,x,0,'order',9);
%% graphing functions
fplot(f,[-5,5]);
hold on
fplot(a,[-5,5]);
fplot(b,[-5,5]);
fplot(c,[-5,5]);
fplot(d,[-5,5]);