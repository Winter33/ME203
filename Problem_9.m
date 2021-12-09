% Marcus Winters
%ME203
%10/8/21
%Homework 2
%Problem 9

clc; clear all; format compact;
r=[.1:.1:100]
V = (4*pi*r.^3)/3;
A= 4*pi*r.^2 

subplot(2,1,1)
loglog(V,r,'-r')
title('Volume')
subplot(2,1,2)
loglog(A,r)
title('Surface Area')