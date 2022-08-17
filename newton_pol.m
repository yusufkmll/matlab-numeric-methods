function f = newton_pol(in)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   girdiler: n*2 boyutunda matris
%   çıktılar: n uzunluğunda büyükten küçüğe polinom katsayıları
[n,m] = size(in); % a,b; c,d ; e,f; g,h

disp(n);
disp(m);

row = n + (n-1);
col = n-1;

RES = zeros(row,col);

for i = 2:row
    RES(i-1,1) = in(i/2,1);
end

for i = 1:n-1

    for j = 1:n-i
        
    end
    
end

disp(RES)

f = RES;
% ANA DÖNGÜ
% TOPLAMDA N-1 KEZ ÇALIŞACAK
% HER TURDA BİR İTERASYON TAMAMLANACAK
% SONUÇ MATRİSİ
% N + (N-1) SATIR
% N-1 SÜTÜNDAN OLUŞACAK
% ROW = N + (N-1), COL = N-1
% RES = ZEROS(ROW,COL)

% SONUÇ MATRİSİ İLK SÜTÜNU
% 1 => Y1 yani IN(1,2) => FOR LOOP 2 2 SAYACAK
% 3 => Y2 yani IN(2,2) => IN(I/2,2) OLACAK
% 5 => Y3 yani IN(3,2) => RES(I-1,1)
% 7 => Y4 yani IN(4,2)
% 9 => Y5 yani IN(5,2)

% N = 5 OLSUN BU DURUMDA İLK ADIMDA
% N - 1 KEZ DEĞER HESAPLANACAK, İKİNCİ ADIMDA
% N - 2 KEZ DEĞER HESAPLANACAK, ÜÇÜNCÜ ADIMDA
% N - 3 KEZ DEĞER HESAPLANACAK, DÖRDÜNCÜ ADIMDA
% N - 4 KEZ DEĞER HESAPLANACAK, YANİ BİR KEZ

% İLK ADIMDA
% RES(2,3) = RES(3,2) - RES(1,2)  /   RES(3,1) - RES(1,1)
% RES(4,3) = RES(5,2) - RES(3,2)  /   RES(5,1) - RES(3,1)
% RES(6,3) = RES(7,2) - RES(5,2)  /   RES(7,1) - RES(5,1)
% RES(8,3) = RES(9,2) - RES(7,2)  /   RES(9,1) - RES(7,1)

% İKİNCİ ADIMDA
% RES(3,4) = RES(4,3) - RES(2,3)  /   RES(5,1) - RES(1,1)
% RES(5,4) = RES(6,3) - RES(4,3)  /   RES(7,1) - RES(3,1)
% RES(7,4) = RES(8,3) - RES(6,3)  /   RES(9,1) - RES(5,1)

% ÜÇÜNCÜ ADIMDA
% RES(4,5) = RES(5,4) - RES(3,4)  /   RES(7,1) - RES(1,1)
% RES(6,5) = RES(7,4) - RES(5,4)  /   RES(9,1) - RES(3,1)

% DÖRDÜNCÜ ADIMDA
% RES(5,6) = RES(6,5) - RES(4,5)  /   RES(9,1) - RES(3,1)

end
