# Derivada-usando-MATLAB
This code simulates the behavior of a derivative

Este código fue programado en MATLAB. La intención del código es simular el comportamiento de la derivada de la función trigonométrica COSENO ()

## Derivada: 
La derivada expresa la razón de cambio. La función matemática que usamos en este repositorio es la siguiente: 

$$ y = lim_{h->0} [ f(x + h) - f(x) ] / h $$

$$ \frac{1}{2} $$

## Partes del código

El código fue escrito en MATLAB, por lo que la sintaxis general corresponde a este lenguaje de programación. 

### Inicio
Primero es necesario hacer una limpieza de el espacio de trabajo, es común en este tipo de proyectos de prueba en MATLAB, los comandos son: 

```
clc
clear all
close all
```

### Función 
La función que el programa va a derivar se encuentra en la línea **12**, antes de declarar la función matemática a derivar es necesario declarar el tiempo en el cual la función se va a evaluar, por ello colocamos un vector que va de 0 a 25 unidades con un salto de 0.01 fracciones. 

### Derivada
Para la derivada será necesario priemro crear un vector en 0's del mismo tamaño en que la función será evaluada. 

Para ello usamos la función en MATLAB $zeros(A, B)$

Y luego hacemos la derivada iterando el resultado de la función matemática de la derivada a una posición del vector en $zeros$ antes creado. 


### Ploteo de animación

La animación tiene la siguiente lógica. 

> Todo corre sobre un **for** que recorre la forma del vector del tiempo. 

+ Crear la figura con los ejes fijos. 
+ Colocar la función, la derivada, y una pendiente -> Frame.
+ Colocar una pausa -> 0.001 segundos.
+ Borrar los gráficos de las funciones dejando la figura general y los ejes. 
+ Continuar con una iteración en donde la derivada sea evaluada en función del tiempo. 


**IM**: 

> La función de la derivada se hace igual en el **for** último porque es el que recorre la derivada en _tiempo real_

> Los comandos en MATLAB para hacer el intercambio de frames son _hold on_ y _hold off_

> Es posible hacer más "rápida" la animación colocando un factor a la variable de iteracinón del último **for**, lo que en realidad hace es bajar la resolución de la animación al acortar la cantidad de frames que tiene que generar, cargar y recorrer el programa principal.

> Es posible correr el programa desde MATLAB-ONLINE

