clc;
clear all;
f=@(x)x^2; %Change here for different function
 a=input('Enter lower limit a: '); % exmple a=1
 b=input('Enter upper limit b: ');  % exmple b=2
 n=input('Enter the  number of sub-intervals n: '); % exmple n=21
 h=(b-a)/n;
if rem(n,3)~=0
   fprintf('\n Enter valid n!!!'); 
   n=input('\n Enter n as multiple of 3: ');
end
for k=1:1:n
  x(k)=a+k*h;
  y(k)=f(x(k));
end
 so=0;sm3=0;% Formula:  (3h/8)*[(y0+yn)+2*(y3+y6+..multiple of 3 terms)+3*(y1+y2+y4+y5+...remining terms)]
for k=2:1:n-1
    if rem(k,3)==0
       sm3=sm3+y(k); %sum of multiple of 3 terms 
     else
     so=so+y(k);%sum of others terms 
    end
end
answer=(3*h/8)*(f(a)+f(b)+3*so+2*sm3);
fprintf('\n The value of integration is %f',answer); % exmple The value of integration is 0.381665
