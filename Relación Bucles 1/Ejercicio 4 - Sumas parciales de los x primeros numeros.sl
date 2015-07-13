/*

Ejercicio 4
===========

OBJETIVO: Programa que calcula la suma de los x primeros n�meros naturales, imprimiendo en 
			 pantalla cada una de ellas (es decir, va imprimiendo las sumas parciales.)

OBSERVACIONES: - He introducido un condicional dentro del bucle para pausar la ejecuci�n del programa
				     y visualizar la sucesi�n completa. Estas pausas obligan al usuario a pulsar la tecla
				     'intro' para continuar despu�s de mostrar los primeros 20 valores de las sumas parcia-
				     les de la sucesi�n.
					- He establecido un l�mite entre 0 y 1000 para el n�mero que se le pide al usuario, para
					  omitir los n�meros negativos y establecer un tope no exageradamente alto.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/

var
 
			  i : numerico   // Variable de control para las iteraciones del bucle.
		  tope : numerico   // Variable introducida por el usuario para mostrar n n�meros entre el 0 y el 1000
	sumatorio : numerico   // Variables en la que voy almacenando el sumatorio de las sumas parciales.
	continuar : cadena     // Variable para mostrar por pasos en pantalla



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LAS SUMAS PARCIALES DE LOS 'X' PRIMEROS N�MEROS NATURALES")

	repetir
		imprimir ("\n\nIntroduce el n�mero de n�meros naturales para la sucesi�n (entre 0 y 1000): ")
		leer(tope)
	hasta (tope>=0 and tope<=1000)

	desde i=1 hasta tope {
		imprimir(i, " + ", sumatorio, " = ", i+sumatorio, "\n")
		sumatorio = sumatorio + i
		si (i%20==0) {
				imprimir("\n- Presiona enter para continuar -\n")          // Condicional para introducir una pausa en la ejecuci�n del programa
				leer(continuar)
		}
	}


fin