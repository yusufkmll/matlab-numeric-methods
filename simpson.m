function [out] = simpson(f,a,b,c,d,h)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
f = inline(f);
n=(b-a)/h; u=n/2; out=0;
m=(d-c)/h; v=m/2;
for j=1:v
    for i=1:u
        out=out+(f(a,c)+4*f(a+h,c)+f(a+2*h,c)+4*f(a,c+h)+16*f(a+h,c+h)+4*f(a+2*h,c+2*h));
        a=a+2*h;
    end
    a=a-i*2*h;
    c=c+2*h;
end
out =out *h^2/9;
end