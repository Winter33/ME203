%Marcus Winters
%ME203
%10/8/21
%Homework 2
%Problem 6
clc; clear all; format compact;
t=[1:(1/60):3];
T=6*log(t)-7*exp(.2*t);
plot(t,T)
title ('Temperature vs Time')
xlabel('Time(minutes)')
ylabel('Temperature (C)')