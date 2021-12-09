
%ME203-Section 1101
%Winters, Marcus
% 10/25/21
%Lab 19
%polyfit
clc,clear all, format compact

x=1:6;
y=[1 22 50 62 97 110];
P=polyfit(x,y,1);
y1=polyval(P,x);
plot(x,y,'o',x,y1,'g')
rms(y1)%rms error
%% INterpolation
clc,clear all, format compact

x=0:5;
xi=3.6;
y1=[0 20 60 68 77 110];
y2=[0 25 62 67 82 103];
y3=[0 52 90 91 93 96];
i=interp1(x,y1,xi)
j=interp1(x,y2,xi)
k=interp1(x,y3,xi)
%% Random
clc,clear all, format compact

r1=6*rand(1,10);
r2=round(r1+.05);
c1=ceil(r1);%rounds up
floor(r1);% rounds down
fix(r1); % rounds to zero
x=[1 2 3 4 5 6];
hist(r2,x)
