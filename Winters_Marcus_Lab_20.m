%ME203-Section 1101
%Winters, Marcus
% 10/25/21
%Lab 19
%%
clc, clear, format compact
x=linspace(0,pi,100);
y=sin(x);
a=trapz(x,y);
ca=cumtrapz(x,y);
plot(x,y,x,ca)
f=@(x)(sin(x));
integral(f,0,pi);
%%
clc, clear, format compact
xmin=pi;
xmax=2*pi;
ymin=0;
ymax=pi;
F=@(x,y)(y.*sin(x)+x.*cos(y));
a=integral2(F,xmin,xmax,ymin,ymax)
%%
clc, clear, format compact

xmin=pi;
xmax=2*pi;
ymin=0;
ymax=@(x)(x);
zmax=@(x,y)(x+y);
zmin=0;
F=@(x,y,z)(z.*(y.*sin(x)+x.*cos(y)));
R=integral3(F,xmin,xmax,ymin,ymax,zmin,zmax)