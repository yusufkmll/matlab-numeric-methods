function [I] = Simpson141(fx,a,b,h)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
f=str2func(fx);
n=(b-a)/h;u=n/2;I=0;
for i=1:u
    I=I+(f(a)+4*f(a+h)+f(a+2*h));
    a=a+2*h;
end
I=I*(h/3);
end