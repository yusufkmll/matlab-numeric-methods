function [root,iteration] = bisection(a,b,tol,f)
%BISECTION numeric solution for linear equation
%   give the function parameter like the examples below
%   for 7x-13  -->  @(x)7*x-13
%   for x^3-8  -->  @(x)x^3-8
f=str2func(f);
xr=(a+b)/2; %first iteration
exr=a; %iteration 0-
err=abs((exr-xr)/xr); %error will be greater than tolerance
iteration = 0; %to count how iteration is passed
if f(a)*f(b) < 0 %there's a root
    while err > tol
        if f(a)*f(b) < 0
            b = xr;
        else
            a = xr;
        end
        exr = xr;
        xr = (a+b)/2;
        err=abs((exr-xr)/xr);
        iteration = iteration + 1;
    end
    root = xr;
    disp('root: '); disp(root);
    disp('iteration: '); disp(iteration);
else
    disp('No root in this interval');
end