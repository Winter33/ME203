%ME203-Section 1101
%Winters, Marcus
% 10/6/21
%Lab 14
clc, clear all, format compact

w=10;
iter=0;
while iter<5
    w=w-1;
    iter=iter+1;
end
iter,w
%%
k=0;
while k<3
    k=k+1;
    a(k,1)=5^k;
end
a(k)
a
%%
clc, clear all, format compact
n=0;
while n<9 
    n=n+1;
    k=2*n-3;
    if k<=0
        disp('error')
        break
    end
    r=log(k^3);
    disp(r)
   
end
%%
clc, clear, format compact

  x=input('length: ');
type=input('Units: ','s');
switch type
    case{'metric','SI','si'}
        length=x*.01;%meters
    case{'FPS','USC'}
        length=x/2.54;%inches
    otherwise
        disp('Unknown')
        length=NaN;
end
display(length)
  
%%
      clc, clear, format compact
x=input('length in meters:');
type=input('Convert to: ','s');
switch type
    case{'miles','mi'}
        length=x*.01;%meters
    case{'yards','yd'}
        length=x/2.54;%inches
         case{'miles','mi'}
        length=x*.01;%meters
    case{'yards','yd'}
        length=x/2.54;%inches
    otherwise
        disp('Unknown')
        length=NaN;
end
display(length)  
%%
k=5
while k<=7
    x=k^2
end
x