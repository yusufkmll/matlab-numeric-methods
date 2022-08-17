function [out] = quadN(w,x,f,a,b)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
f=str2func(f);

n=length(x); out=0;
if a~=-1 || b~=1
    for i=1:n
        out=out+w(i)*f((b-a)/2*x(i)+(b+a)/2);
    end
    out=out*(b-a)/2;
else
    for i=1:n
        out=out+w(i)*f(x(i));
    end
end
end