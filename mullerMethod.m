% Yusuf Kemal PALACI - 18014051
function root = mullerMethod(x0,x1,x2,tol,f)
%MULLERSMETHOD müller yöntemi ile kök bulan fonksiyon
%   fonksiyonu argüman olarak verirken aşağıdaki şekilde verin
%   örneğin 7x-13 için  -->  @(x)7*x-13
%   örneğin x^3-8 için  -->  @(x)x^3-8
f = str2func(f); % fonksiyonu string'den okur
err = 2 * tol; % while döngüsünün başlaması için gerekli

while err > tol
    h0 = x1-x0;
    h1 = x2-x1;
    sigma0 = (f(x1)-f(x0)) / (x1-x0);
    sigma1 = (f(x2)-f(x1)) / (x2-x1);
    a = (sigma1-sigma0) / (h1+h0);
    b = a*h1 + sigma1;
    c = f(x2);
    posDenom = b+sqrt(b^2-4*a*c); % paydanın pozitif durumu
    negDenom = b-sqrt(b^2-4*a*c); % paydanın negatif durumu
    if posDenom > negDenom
        denom = posDenom;
    else
        denom = negDenom;
    end 
    x3 = x2 + (-2*c)/denom;
    err = abs((x3-x2)/x3);
    x0 = x1; % yeni değerler sırasıyla atanır
    x1 = x2;
    x2 = x3;
end

root = x3;
root

end