%ME203-Section 1101
%Winters, Marcus
% 10/25/21
%Lab 16: meal
clc,clear all, format compact


number=0
counter=0
free=0
balance= input('Enter amount:');
while balance>=7.5;
    number=number+1;
    balance=balance-7.50;
    counter=counter+1;
    if counter==2;
        free=free+1;
        counter=0;
    end
end
total=number+free;

fprintf('The total number of meals is %.1f and the number of free meals is %.1f.', number,free)