% Marcus Winters
%ME203
%11/1/21
%Homework 3
%problem 1
clc; clear all; format compact;
A=[0 -7 6;5 -4 3;10 -1 9;15 1 0;20 2 -1];
plot(A(:,1),A(:,2),A(:,1),A(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
%% problem 2
clc; clear all; format compact;
B=[3 -5 6 15;7 9 13 5; -4 10 8 4]
C=[7 -4 12; 9 10 2; 13 8 11;5 4 1]
D=[7 9;-4 10; 12 2]
%% Problem 3
clc; clear all; format compact;
A=[56 32;24 -16];
B=[14 -4; 6 -2];
Product=A.*B
Dividend=A./B
Cube=B.^3
%% Problem 4
clc; clear all; format compact;
a=6*pi*(atan(12.5))+4
b=5*tan(3*asin(13/5))
%% Problem 5
clc; clear all; format compact;
syms x y 
eqn1 = -2*x + y  == -5;
eqn2 = -2*x + y  == 3;
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y]);
X1 = linsolve(A,B)

syms x y 
eqn1 = -2*x + y  == 3;
eqn2 = -8*x + 4*y  == 12;
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y]);
X2 = linsolve(A,B)

syms x y 
eqn1 = -2*x + y  == -5;
eqn2 = -2*x + y  == 5.00001;
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y]);
X3 = linsolve(A,B)

syms x y z k
eqn1 = x + 5*y - z+6*k == 19;
eqn2 = 2*x - y + z-2*k == 7;
eqn3 = -x + 4*y -z+3*k == 30;
eqn4 = 3*x -7*y -2*z+k == -75;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3,eqn4], [x, y, z,k]);
X4 = linsolve(A,B)
%% Problem 6
clc; clear all; format compact;
t=1:0.01:3;
T=(6.*log(t))-(7.*exp(0.2*t));
plot(t,T)
xlabel('Time(min.)')
ylabel('Temperature(C)')
%% Problem 7
clc; clear all; format compact;
a=1;
b=1;
c=2;
(a==b)&((b==c)|(a==c))
(a==b)|((b==c)&(a==c))
%They're not equivalent the two expressions 
%have different outputs
%% Problem 8a
clc; clear all; format compact;
x=input('Enter Grade:')
if x>=90 
    Grade='A'
end
    if x>=80 && x<=89
    Grade='B'
    end
    if x>=70 && x<=79
    Grade='C'
    end
    if x>=60 && x<=69
    Grade='D'
    end
    if x<60
    Grade='F'
    end
 
%% Problem 8b
    clc; clear all; format compact;
    x=input('Enter Grade:')
if x<60
    Grade='F'
elseif x<70
    Grade='D'
elseif x<80
    Grade='C'
elseif x<90
    Grade='B'
else
    Grade='A'
end

    
