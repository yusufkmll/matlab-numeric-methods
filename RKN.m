function [out] = RKN(f,a,b,h,x1,y1)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
n=(b-a)/h;
f=str2func(f);
x(1)=x1;y(1)=y1;
for i=1:n
    k1=h*f(x(i),y(i));
    k2=h*f(x(i)+0.5*h , y(i)+0.5*k1);
    k3=h*f(x(i)+0.5*h , y(i)+0.5*k2);
    k4=h*f(x(i)+h , y(i)+k3);
    y(i+1)=y(i)+ k1*1/6 + k2*2/6 + k3*2/6 + k4*1/6;
    x(i+1)=x(i)+h;
end
out=[x' y'];
realAns = sqrt(1+3*exp(-1.5^2));
fprintf('real ans: %f', realAns);
end