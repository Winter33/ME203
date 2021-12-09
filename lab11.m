%ME203-Section 1101
%Winters, Marcus
%Lab 11
clc, clear, format compact
q=0:6:18;
r=4:4:12;
for i=1:4;
    for j=1:3;
        A(i,j)=q(i)+r(j);
    end
end

g=4;
if g>5;
    h=10*g;
elseif g>=0;
    h=0;
else h=-20;
end
g,h;

x=10
if x>10
y=log(x)
if y>3
    z=4*y
elseif y>2.5
    z=2*y
else
    z=0
end
else y=3*x
    z=7*x
end
    


    