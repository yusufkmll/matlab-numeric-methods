function [k1, k2, yd] = reglin(x, y, x0)
%EXPONANTIAL REGRESSION
%   a*exp(b*x) Modeli İçin Nonlineer Regresyon Kodu
%   Yusuf Kemal PALACI
%   18014051
n = length(x);
xt=0;xt2=0;Yt=0;xYt=0; %yt -> Yt, xt -> xYt
Y = zeros(n); % ln(y) değerlerini tutacak dizi

for i=1:n
    Y(i) = y(i);
    xt=xt+x(i);
    xt2=xt2+(x(i))^2;
    Yt=Yt+Y(i); % Y değerlerinin toplamı
    xYt=xYt+x(i)*Y(i); % x*Y değerlerinin toplamı
end
k1=(Yt*xt2-xt*xYt)/(n*xt2-xt*xt);k2=(n*xYt-xt*Yt)/(n*xt2-xt*xt);
b = k2; % Elde edilen sonuçlardan geriye dönüş
a = k1; % Ters logaritma işlemi ile geri dönüş
yd = a + (x0*b); % Bulunan a ve b değerlerine göre girilen değerin
                  % hesaplanması
fprintf('linear regression model coefficents are a=%f and b=%f', a,b);
fprintf('For x*=%f regression model output=%f',x0,yd);
end