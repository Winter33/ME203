%ME203-Section 1101
%Winters, Marcus
%Lab 9
clc, clf, clear all, format compact,
x=0:0.1:2*pi;
y1=sin(x);
y2=sin(2*x);
subplot(2,1,1)
plot(x,y1,'-r')
subplot(2,1,2)
plot(x,y2)
