%ME203-Section 1101
%Winters, Marcus
%Lab 9
clc, clear all, format compact,
xrange=[0 5];
initial=[.05 0];
[x,s]=ode45('secondorder',xrange,initial);
subplot(1,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('y')
subplot(1,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dy*dx')
%% Assignment Ex2
clc, clear all, format compact,
xrange=[0 2];
initial=[0 0];
[x,s]=ode45('secondorder',xrange,initial);
subplot(1,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('y')
subplot(1,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dy*dx')
%% Assignment Ex3
clc, clear all, format compact,
xrange=[0 5];
initial=[0 4];
[x,s]=ode45('secondorder3',xrange,initial);
subplot(1,2,1)
plot(x,s(:,1))
xlabel('x')
ylabel('y')
subplot(1,2,2)
plot(x,s(:,2))
xlabel('x')
ylabel('dy*dx')
%%
  function [output] = secondorder(x,initial)
 
  y=initial(1);
  z=initial(2);
   
  output = zeros(2,1); 
   
  output(1) = z;    
  output(2) = cos(y);
   
  end
%%
function [output] = secondorder3(x,initial)
 
  y=initial(1);
  z=initial(2);
   
  output = zeros(2,1); 
   
  output(1) = z;    
  output(2) = (5*(z)+y)/6;
   
  end
