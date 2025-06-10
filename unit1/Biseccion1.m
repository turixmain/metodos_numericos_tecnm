clc;
clear all;

 funcion=@(z) z.^2-2;
 fprima=@(z) 2*z;



fprima2= @(x,x_anterior) (funcion(x)-funcion(x_anterior))/(x-x_anterior);

x1 =1;
x2=2;
Tol =1;
n1=0;
y_anterior=1;
while Tol>0.001
    if funcion(x1)*funcion(x2)>0
       fprintf("Probando%f", funcion(x1)*funcion(x2));break;
    end
    
    x= (x1+x2)/2;
    y=funcion(x);
    
    if y<0 
        x1=x;
    else
        x2=x;
    end
    Tol =abs(y-y_anterior);
    y_anterior = y;
    
  %  printf("%f\n",x)
n1=n1+1;
end
x_bis=x;


% NEWTON

x=0.8;
Tol=1;
n=1;
y_anterior =0;

while Tol>0.0001

x(n+1)=x(n)-funcion(x(n))/fprima(x(n));
Tol =abs(x(n)-x(n+1));
    
    fprintf("%f\n",x(n))
n=n+1;

end
x_new=x(n);
%secante
clear x;
x_anterior= 2
x=1;
Tol=1;
n=2;
x=[2 1];

while Tol>0.0001

x(n+1)=x(n)-funcion(x(n))/fprima2(x(n),x_anterior);
Tol =abs(x(n)-x(n+1));
    
    fprintf("sec%f\n",x(n))
x_anterior =x(n);
n=n+1;
end

fprintf("La raíz con Bisección es: %f\n", x_bis);
fprintf("La raíz con Newton es: %f\n", x_new);
fprintf("La raíz con Secante es: %f\n", x(n));
