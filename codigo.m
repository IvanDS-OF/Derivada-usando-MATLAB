

%Derivar una función sin()
clear all, close all, clc 

t_i = 0;
t_f = 25;
inc = 0.01;
tiempo = (t_i: inc: t_f);
funcion = cos(tiempo);


%Partes de la derivada: 
%función principal es der = (f(k)-f(k-1)) / t  
%Tomando en cuenta que "f" = función a derivar
%                      "k" = pibote (en for)
%                      "t" = tiempo (incremento)

%COMENZAMOS: Inicializamos en 0
%Vectorizamos a tiempo:
[r, c] = size(tiempo);
der = zeros(c, 1); %Revisar el WorkSpace para corroborar

%inicializamos for para "k"
t = inc;
for k = 2:c %% 2 es el inicio forzoso 
	der(k, 1) = (funcion(k) - funcion(k-1)) / t ;
end

%figure(1)
%subplot (2,2,1)
%plot (tiempo, funcion, 'r', 'LineWidth', 2)
%grid on
%title('Funcion sin derivar')
%
%subplot (2,2,2)
%plot (tiempo, der, 'b', 'LineWidth', 2)
%grid on
%title('Funcion derivada')
%
%subplot (2, 1, 2)
%plot (tiempo, der, 'b', 'LineWidth', 2)
%title('Ambas dos juntas')
%hold on
%plot (tiempo, funcion, 'r', 'LineWidth', 2)
%grid on
%hold off



%*******************************************************************************
%Ahora es momento de hacer una animación
%Primeramente para saber cómo encontrar los datos de Ziegler_Nichols
%Recordar que tenemos (para más facil) colocar la función explicita "y"
% y - y0 = m(x-x0)
% y = m(x-x0) + y0
%Adecuando la ecuación de la recta a lo que necesitamos:
% y_1 = der*tiempo - der*tiempo0 + y0
%
%
%COOMENZAMOS
figure(2)
[r, c] = size(tiempo);

for i = 1:c %Iniciamos en 1 porque no tenemos restricciones negativas
			%Y colocamos la c para que nos dé la medida del vector de la funcion
			
	%Si se quiere acelerar la animación, utilizar:
	i = i*5;
	
	y_1 = der(i, 1)*tiempo - der(i, 1)*tiempo(1, i) + funcion(1, i);
	%comenzamos el ploteo para engañar al ojo 
	%TOMAR EN CUENTA EL TAMAÑO Y LA FORMA DE LOS VECTORES der() y tiempo()
	pause(0.001)
	plot(tiempo, y_1, 'b', 'LineWidth', 2)
	hold on
	plot (tiempo, der, 'g', 'LineWidth', 2)
	plot (tiempo, funcion, 'r', 'LineWidth', 2)
	plot (tiempo(1, i), funcion(1, i), 'o', 'LineWidth', 7)
	hold off
	%AXIS([EJE_X_- EJE_X_+    EJE_Y_-    EJE_Y_+]) Separado por espacios solamente
	axis([0 5*pi -1.5 1.5])
end
