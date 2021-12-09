%Marcus Winters
%ME203
%10/8/21
%Homework 2
%Problem 5
clc; clear all; format compact;

r=10;
theta=[0:.1:(4*pi)];
x=r*(theta-sin(theta));
y=r*(1-cos(theta));
plot(x,y)