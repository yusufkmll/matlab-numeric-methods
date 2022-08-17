function [b] = syndiv(a,r,s)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = length(a) - 1;
b(n+1) = a(n+1);
b(n) = a(n) + r * b(n+1);
for i=n-1:-1:1
    b(i) = a(i) + r * b(i+1) + s * b(i+2);
end
b
a
end