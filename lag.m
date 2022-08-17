x = [12 13 14 16];
y = [5 6 9 11];
sum = 0;
a = 12.5;
for i = 1:length(x)
    u = 1;
    l = 1;
    for j = 1:length(x)
        if j ~= i
            u = u * (a - x(j));
            l = l * (x(i) - x(j));
        end
    end
    sum= sum + u / l * y(i);
end
disp(sum);