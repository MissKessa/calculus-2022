%% a)
syms x
a=(exp(-x)-1)/x;
Left_limit_1=limit(a,x,0,'left');
Right_limit_1=limit(a,x,0,'right');
Limit_1=limit(a,x,0);
%Left_limit_1==Right_limit_1
%% b)
syms x
b=(cos (x))^(1/x);
Left_limit_2=limit(b,x,0,'left');
Right_limit_2=limit(b,x,0,'right');
Limit_2=limit(b,x,0);
%Left_limit_2==Right_limit_2
%% c)
syms x
c=((2*x+3)/(2*x+1))^(x+1);
Limit_3=limit(c,x,inf);
%Limit_3
%% d)
syms x
d=exp(tan(x));
Left_limit_4=limit(d,x,pi/2,'left');
Right_limit_4=limit(d,x,pi/2,'right');
Limit_4=limit(d,x,pi/2);   
%Left_limit_4==Right_limit_4