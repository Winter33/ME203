%ME203-Section 1101
%Winters, Marcus
% 10/25/21
%Lab 16

clc, clear all, format compact

A=ones(4,4);%for loop matrix
a=A;
for i=1:4 
    for j=1:size(A,2)
        if i==j
            a(i,j)=2*i+2;
        else
            a(i,j)=j;
        end
    end
end
a

i=0;%while loop matrix
j=0;
while i<4
    i=i+1;
    while j<4
        j=j+1;
        if i==j
        a(i,j)=2*i+2;
        else
            a(i,j)=j;
    end
end
j=0;
end
a
%%
%import data etc

