%% a)
syms x
f1=(x^2 +2)/(x-3);
pretty(f1);
fplot(f1,[-2 8]);
%% b
syms x
f2=(x^2 +2)^(1/2);
pretty(f2);
fplot(f2,[-5 5]);
%% c)
syms x
f3=(x^2)*exp(-pi);
pretty(f3);
fplot(f3,[-5 5]);
%% d)
syms x
f4=(log(x^2))/x;
pretty(f4);
fplot(f4,[-5 5]);