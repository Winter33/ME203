%ME203-Section 1101
%Winters, Marcus
% 10/6/21
%Lab 12

clc, clear all, format compact

x=[-4:.5:6];
y=[(x+2).*(x-1).*(x-3)];
plot(x,y)
title('Lab 12 Graph')
xlabel('x')
ylabel('f(x)')


legend('f(x)')