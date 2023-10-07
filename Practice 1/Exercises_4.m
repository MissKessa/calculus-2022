syms x;
f=x*sin(x);
g=(x^2)-1;
h=exp(x+3);

a=compose(h,compose(g,f));
b=compose(f,compose(g,h));
c=compose(finverse(h),h);
d=compose((f+g),h);
e=compose(f,(g+h));
f1=(subs(f,x,2))*(subs(g,x,3));
g1=((subs(f,x,1))+(subs(g,x,4)))*(subs(h,x,4));