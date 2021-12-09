%ME203-Section 1101
%Winters, Marcus
% 10/25/21
%Lab 19
%Noisy signal
clc,clear all, format compact
t = linspace(0, 10, 512);
S=(1)*sin(2*pi/5*t);
N=(.1)*randn(size(t));
X=S+N;
SNR=20*log10(std(S)/std(N))
plot(t,X)
xlabel('Time')
ylabel('F(t)')
title('Noisy Signal')