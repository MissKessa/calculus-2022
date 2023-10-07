syms x
f1=-2*x+1;
f2=x^2;
f3=sin(x);
%% Studying x=-1
f_1=subs(f1,x,-1);
Left_limit_1=limit(f1,x,-1,'left');
Right_limit_1=limit(f2,x,-1,'right');
%Left_limit_1==Right_limit_1
%Not continuous
%% Studying x=0
f_2=subs(f3,x,0);
Left_limit_2=limit(f2,x,0,'left');
Right_limit_2=limit(f3,x,0,'right');
%Left_limit_2==Right_limit_2
%Continuous
%% 
fplot(f1,[-5 -1]);
hold on
fplot(f2,[-1 0]);
fplot(f3,[0 5]);