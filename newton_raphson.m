function [root,iteration] = newton_raphson(x1,tol,f,ft)
%NEWTONRAPHSON a=start, tol=tolerance, f=function
%   Detailed explanation goes here
f = str2func(f);
ft = str2func(ft);
iteration = 0;
n=1;
x(1) = x1;
h=-f(x(n))/ft(x(n));
x(n+1) = x(n) + h;

while abs(f(x(n+1))) > tol
    n = n+1;
    iteration = iteration + 1;
    h=-f(x(n))/ft(x(n));
    x(n+1) = x(n) + h;
    disp(x(n));
end

root = x(n+1);
iteration
root