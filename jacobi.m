A=[5 -2 3 0 6; -3 9 1 -2 7.4; 2 -1 -7 1 6.7; 4 3 -5 7 9; 2 3.5 6.1 -4 -8.1]
b=[-1 2 3 0.5 3.1]'


x=rand(5,1)
n=size(x,1);
normVal=Inf; 
JacobItr=0;


plotJacobi=[];
while normVal>tol
    xold=x;
    
    for i=1:n
        sigma=0;
        
        for j=1:n
            
            if j~=i
                sigma=sigma+A(i,j)*x(j);
            end
            
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    JacobItr=JacobItr+1;
    normVal=norm(xold-x);
    plotJacobi=[plotJacobi;normVal];
end
fprintf('Solution of the system is : \n%f\n%f\n%f\n%f\n%f in %d iterations',x,JacobItr);