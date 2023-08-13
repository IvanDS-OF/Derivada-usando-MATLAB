% Derivar una función Cos()
% Created by Eng. Ivan Duran Santos, September 2022

% Firsts commands to clean spaces in MATLAB
clear all, close all, clc 

% Declare the size of the vector and the Cos function
t_i = 0;
t_f = 25;
inc = 0.01;
tiempo = (t_i: inc: t_f);
funcion = cos(tiempo);

% COMENZAMOS: Inicializamos en 0
% Initial state in 0
% Vectorizamos a tiempo:
[r, c] = size(tiempo);
der = zeros(c, 1); % Revisar el WorkSpace para corroborar

% inicializamos for para "k"
% DERIVATE THE FUNCTION 
t = inc;
for k = 2:c %% 2 es el inicio forzoso 
	der(k, 1) = (funcion(k) - funcion(k-1)) / t ;
end



% *******************************************************************************

figure(2)
% Plotting the figure
[r, c] = size(tiempo);

for i = 1:c % Iniciamos en 1 porque no tenemos restricciones negativas
			% Y colocamos la c para que nos dé la medida del vector de la funcion
			
	% Si se quiere acelerar la animación, utilizar:
	% if you want to accelerate the animation, you can ise:
	i = i*5; % Try increasing the factor
	
	y_1 = der(i, 1)*tiempo - der(i, 1)*tiempo(1, i) + funcion(1, i);
	% comenzamos el ploteo para engañar al ojo 
	% TOMAR EN CUENTA EL TAMAÑO Y LA FORMA DE LOS VECTORES der() y tiempo()
	% Realize the size and shape of der() and tiempo()
	pause(0.001)
	plot(tiempo, y_1, 'b', 'LineWidth', 2)
	hold on
	plot (tiempo, der, 'g', 'LineWidth', 2)
	plot (tiempo, funcion, 'r', 'LineWidth', 2)
	plot (tiempo(1, i), funcion(1, i), 'o', 'LineWidth', 7)
	hold off 
	% IMPORTANT: Fix the axis
	% AXIS([EJE_X_- EJE_X_+    EJE_Y_-    EJE_Y_+]) Separado por espacios solamente
	axis([0 5*pi -1.5 1.5])
end

#