%Marcus Winters
%ME203
%10/8/21
%Homework 2
%Problem 8

clc; clear all; format compact;
t=0:.1:10;
b1=.05;
b2=1;
b3=.5;
b4=5;
b5=10;

y=1-exp(-b1*t);
plot(t,y)
hold on

y2=1-exp(-b2*t);
plot(t,y2)
hold on

y3=1-exp(-b3*t);
plot(t,y3)
hold on

y4=1-exp(-b4*t);
plot(t,y4)
hold on

y5=1-exp(-b5*t);
plot(t,y5)
hold on
xlabel('Time (s)')
ylabel ('y(t)')
legend('b=.05','b=1','b=.5','b=5','b=10')
grid on
% the time it takes for y(t) to reach 98% of its steady state value depends
% on b 
% y=.98 so t=-log(.98-1)/b

Time_b1=-log(.02)/b1
Time_b2=-log(.02)/b2
Time_b3=-log(.02)/b3
Time_b4=-log(.02)/b4
Time_b5=-log(.02)/b5
