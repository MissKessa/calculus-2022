syms x;
a=(x^2)/(6*x+x^3);
a1=subs(a,x,1);
a2=subs(a,x,-0.5);

b=(sin(x))/(1+cos(x));
b1=subs(b,x,2);
b2=subs(b,x,2*pi/180);

c=log(abs(x+2));
c1=subs(c,x,4);
c2=subs(c,x,-2);
c3=subs(c,x,-10);

d=(exp(x))/(exp(2*x+1));
d1=subs(d,x,5);
d2=subs(d,x,-2);
