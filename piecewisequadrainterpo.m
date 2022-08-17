clc
clear all
close all

a1 = 0.5555;
a2 = 0.888;
a3 = 0.555;
a4 = 2.4571;
b2 = 2.5143;
b3 = 0.9143;

x1 = 0.0:0.1:0.5;
x2 = 0.5:0.1:1.5;
x3 = 1.5:0.1:2.5;
x4 = 2.5:0.1:3.0;

y1 = a1*(x1-0).^2;
y2 = a2*(x2-1).^2 + b2*(x2-1) + 1;
y3 = a3*(x3-2).^2 + b3*(x3-2) + 4;
y4 = a4*(x4-3).^2 + 3;

hold on 
plot(x1,y1);
plot(x2,y2);
plot(x3,y3);
plot(x4,y4);

hold off