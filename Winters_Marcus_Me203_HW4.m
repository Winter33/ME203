% Marcus Winters
%ME203
%11/1/21
%Homework 4
%problem 1
clc; clear all; format compact;
A=[3 5 -4; -8 -1 33; -17 6 -9];

% For loop
for a=1:3
for b=1:3
    if A(a,b)>=1
    B(a,b)=log(A(a,b))
else
    B(a,b)=A(a,b)+20
    end
end
end
% Problem 1 part2

while a<=3
    while b<=3
    if A(a,b)>=1
    B(a,b)=log(A(a,b))
        break
    end
    if A(a,b)<1
        B(a,b)=A(a,b)+20
        break
    end
    break
    end
 break
end
   %% Problem 2
   k = 1; b = -2; x = -1; y = -2;
while k <= 3 k,
b, x, y
y = x^2 - 3;
if y < b
b = y;
end
x = x + 1;
k = k + 1;
end
%% Problem 3
disp 'Enter the weight of object, then enter material coefficient'


MetalonWood =.4;
WoodonWood =.35;
MetalonMetal =.2;
RubberonConcrete =.7;
W=input('weight: ');
M=input('material coefficient: ');

Metal_on_metal=.2*W;
Wood_on_wood=.35*W;
Metal_on_wood=.4*W;
Rubber_on_concrete=.7*W;

disp 'Answer displayed below instead of in the command window .'
switch M
    case .2
        fprintf ('%d\n',Metal_on_metal)
    case .35
        fprintf ('%d\n',Wood_on_wood)
    case .4
        fprintf ('%d\n',Metal_on_wood)
    case .7
        fprintf ('%d\n',Rubber_on_concrete)
end

%% Problem 4

clc; clear all; format compact;

fprintf('Input coordinates\n');


x1=input('x1=');y1=input('y1=');
x2=input('x2=');y2=input('y2=');
x3=input('x3=');y3=input('y3=');
x4=input('x4=');y4=input('y4=');

disp('Coefficients of the polynomial are:')
xi_yi = [x1 y1;x2 y2; x3 y3; x4 y4];
[a b c d] = coefficient(xi_yi)
x=-10:0.1:10;
y=(a*x.^3)+(b*x.^2)+(c*x)+d;



%% Problem 5
n=1
for t=0:0.1:4
x=5*t-10
y=25*t.^2-120*t+144
d(n)=sqrt(x.^2+y.^2)
n=n+1
end
t=0:0.1:4
[a,b]=min(d)
disp(['the minimum distance is ',num2str(a),'m and that occur at time',num2str(t(b)),'sec'])

%% Problem 4 function
function [a b c d]=coefficient(xi_yi)
    xcord=xi_yi(:,1);
    ycord=xi_yi(:,2);
    A=[xcord.^3 xcord.^2 xcord ones(4,1)];
    B=A\ycord;
    
    a = B(1);
    b = B(2);
    c = B(3);
    d = B(4);

end
