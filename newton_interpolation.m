function fp = newton_interpolation(x,y,p)
% Newton Bölünmüş Farklar İnterpolasyonu
% Yusuf Kemal PALACI
% 18014051
% _____________________________
% x, fonksiyonun girdi dizisi
% y, fonksiyonun çıktı dizisi
% Örnek girdi f(x) = 2x için,
% x=[1,2,3,5,6]
% y=[2,4,6,10,12]
% newton_interpolation(x, y, 4)
% veya
% a = newton_interpolation(x, y, 4)

n = length(x);     % girdi dizisinin uzunluğu alındı
a(1) = y(1);       % çıktı dizisinin ilk elemanı a dizisine atandı
for k = 1 : n - 1  % bir sonraki basamak n-1 uzunluğunda olmalı
   d(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k)); % bölünmüş farklar tablosunun
   % ilk sütunu dolduruldu
   % ilk sütun için bölünmüş farklar formülü uygulandı
end
for j = 2 : n - 1
   for k = 1 : n - j
      d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
      % diğer sütunlar için bölünmüş farklar yöntemi uygulandı
   end
end
disp(d); % bölünmüş farklar tablosu ekrana yazdırıldı
for j = 2 : n
   a(j) = d(1, j-1); % a dizisinin kalan elemanları d matrisiyle dolduruldu
end
Df(1) = 1;
sonuc(1) = a(1); % istenen nokta fonksiyonda yerine konduğunda a(1) yani a0 
% değeri olduğu gibi çıkacak
for j = 2 : n
   Df(j)=(p - x(j-1)) .* Df(j-1);
   sonuc(j) = a(j) .* Df(j);
   % diğer mertebeli katsayılar için p değeri tek tek yerine kondu
end
fp=sum(sonuc); % sonuç matrisinin toplamları fp(p) değerini verir