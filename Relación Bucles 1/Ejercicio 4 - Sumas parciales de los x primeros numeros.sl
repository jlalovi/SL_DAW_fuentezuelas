/*

Ejercicio 4
===========

OBJETIVO: Programa que calcula la suma de los x primeros números naturales, imprimiendo en 
			 pantalla cada una de ellas (es decir, va imprimiendo las sumas parciales.)

OBSERVACIONES: - He introducido un condicional dentro del bucle para pausar la ejecución del programa
				     y visualizar la sucesión completa. Estas pausas obligan al usuario a pulsar la tecla
				     'intro' para continuar después de mostrar los primeros 20 valores de las sumas parcia-
				     les de la sucesión.
					- He establecido un límite entre 0 y 1000 para el número que se le pide al usuario, para
					  omitir los números negativos y establecer un tope no exageradamente alto.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/

var
 
			  i : numerico   // Variable de control para las iteraciones del bucle.
		  tope : numerico   // Variable introducida por el usuario para mostrar n números entre el 0 y el 1000
	sumatorio : numerico   // Variables en la que voy almacenando el sumatorio de las sumas parciales.
	continuar : cadena     // Variable para mostrar por pasos en pantalla



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LAS SUMAS PARCIALES DE LOS 'X' PRIMEROS NÚMEROS NATURALES")

	repetir
		imprimir ("\n\nIntroduce el número de números naturales para la sucesión (entre 0 y 1000): ")
		leer(tope)
	hasta (tope>=0 and tope<=1000)

	desde i=1 hasta tope {
		imprimir(i, " + ", sumatorio, " = ", i+sumatorio, "\n")
		sumatorio = sumatorio + i
		si (i%20==0) {
				imprimir("\n- Presiona enter para continuar -\n")          // Condicional para introducir una pausa en la ejecución del programa
				leer(continuar)
		}
	}


fin