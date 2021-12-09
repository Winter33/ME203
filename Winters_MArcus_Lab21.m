%ME203-Section 1101
%Winters, Marcus
% 10/25/21
%Lab 21
clc, clear, format compact
x=0:0.1:10;
y=cos(x);
n=length(x);
dy=y(3:n)-y(1:n-2);
dx=x(3:n)-y(1:n-2);
dy_dx=dy./dx;
plot(x,y,x(2:n-1),dy_dx)
legend('cos(x)','dy/dx(cos(x)')
%%

[X Y]=ode45(-2*x.^3+x-y, 0:3,1)
