/*

Ejercicio 5
===========

OBJETIVO: Programa que imprime la tabla de multiplicar (hasta el 10) de un número introducido por un usuario.

OBSERVACIÓN: Utilizo dos bucles. Uno para obligar al usuario a introducir una tabla entre el 0 al 10 y otra 
				 para mostrar la tabla solicitada con las 10 primeras operaciones.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/

const

	     tope : 10         // Variable constante para número de multiplicaciones a mostrar.

var
 
			  i : numerico   // Variable de control para las iteraciones del bucle.
	 tablaDel : numerico   // Variable introducida por el usuario para elegir la tabla de multiplicar (entre el 0 y el 10).



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LA TABLA DE MULTIPLICAR ELEGIDA POR EL USUARIO")

	repetir
		imprimir ("\n\nIntroduce la tabla de multiplicar que quieres mostrar (entre 0 y 10): ")
		leer(tablaDel)
	hasta (tablaDel>=0 and tablaDel<=10)

	desde i=0 hasta tope {
		imprimir("\n",tablaDel, " x ", i, " = ", i*tablaDel, "\n")
	}


fin