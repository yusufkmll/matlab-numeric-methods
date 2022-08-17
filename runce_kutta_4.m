clc;
clear all;
close all;

h = 60;
t = 0:h:960;
y = zeros(size(t));
y(1) = 1200;
n = numel(y);
for i=1:n-1
    
    f = (-2.2067)*(10^(-12))*((y(i)^4)-(81*10^8));
    
    k_1 = f(t(i),y(i));
    k_2 = f(t(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = f((t(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = f((t(i)+h),(y(i)+k_3*h));
    
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;
    
end

plot(t,y);
grid on;
