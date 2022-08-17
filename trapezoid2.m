clc
cleear all
close all

a=1;
b=3;
n=4;
h= (b-a)/n;
I=0;
x= a:h:b;
i=1;
[a1,b1]=size(x);

for i=1:b1
    if i== || i==b1
        I=I + feval('fun1',x(1,i));
       % I=I + fun1(x(1,i));
    else
        I=I + 2.* feval('fun1',x(1,i));
        % I=I +2.* fun1(x(1,i));
    end
    
end

INT= (h/2)*I;