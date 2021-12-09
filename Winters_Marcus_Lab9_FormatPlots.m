%ME203-Section 1101
% Winters, Marcus
%Lab 9
clc, clf, clear all, format compact, hold on
x=1:10;
y=[58.5 63.8 64.2 67.3...
    71.5 88.3 90.1 90.6 89.5 90.4]
plot(x,y,':ok')
hold on
plot(x,2*y,'--*r')
hold on
plot(x,y/2,'-.pb')
xlabel('Time')
ylabel('Distance')
axis([0 11 0 200])
title('Time vs Distance')
legend('black','red','blue')
text(1,180,'This is the bottom right corner')
gtext('I did it')



