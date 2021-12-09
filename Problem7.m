%Marcus Winters
%ME203
%10/8/21
%Homework 2
%Problem 7

clc; clear all; format compact;
m=1;
m2=3;
m3=7;
V=[20:100];
R=286.7;
T=293;
p=((m*R*T)./(V))
p2=((m2*R*T)./(V))
p3=((m3*R*T)./(V))
plot(V,p)
hold on
plot(V,p2)
hold on
plot(V,p3)
hold on
xlabel('Volume (m^3)')
ylabel('Pressure (N*m)')
legend('1kg','3kg','7kg')