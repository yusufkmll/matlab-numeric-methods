function [root,iteration] = regula_falsi(a,b,tol,f)
%REGULAFALSI
%   give the function parameter like the examples below
%   for 7x-13  -->  @(x)7*x-13
%   for x^3-8  -->  @(x)x^3-8
f = str2func(f);
xr = (a*f(b)-b*f(a))/(f(b)-f(a)); % ilk iterasyon
exr = a; %0'dan önceki iterasyon
err = abs((exr-xr)/xr);
iteration = 0;
while abs(err) > tol
    if (f(a) * f(xr) < 0)
        b = xr; % eğer a ile mevcut iterasyon çarpımı sıfırdan küçükse
                % kök bu aralıktadır. O yüzden aralığın sağdan sınırı
                % bu iterasyona eşitlenir.
    else
        a = xr; % eğer f(a) ile f(mevcut iterasyon) çarpımı sıfırdan
                % küçükse kök bu aralıkta değildir. O yüzden aralığın
                % soldan sınırı bu iterasyona eşitlenir.
    end
    exr = xr; % bağıl hatayı bulmak için eski iterasyonu tut
    xr = (a*f(b)-b*f(a))/(f(b)-f(a)); % yeni iterasyonu bul
    err = abs((exr-xr)/xr);
    iteration = iteration + 1;
end
root = xr;
root
iteration