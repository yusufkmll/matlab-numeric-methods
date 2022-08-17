clc;
clear all;
close all;


% Euler's Method
h = 0.01;  % step size
t= 0:h:1;  % the range of x
y = zeros(size(t));  % allocate the result y
y(1) = 4  % the initial y value
n = numel(y);  % the number of y values
% The loop to solve the DE
for i=1:n-1
    f = sin(t(i)+y(i))-exp(t(i));
    y(i+1) = y(i) + h * f;
end

plot(t,y);
grid on;