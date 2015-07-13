/*

Ejercicio 3
===========

OBJETIVO: Programa que calcula la suma de los 100 primeros números naturales, imprimiendo en 
			 pantalla cada una de ellas (es decir, va imprimiendo las sumas parciales.)

OBSERVACIÓN: He introducido un condicional dentro del bucle para pausar la ejecución del programa
				 y visualizar la sucesión completa. Estas pausas obligan al usuario a pulsar la tecla
				 'intro' para continuar después de mostrar los primeros 20 valores de las sumas parcia-
				 les de la sucesión.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

const

	tope : 100

var
 
			  i : numerico   // Variable de control para las iteraciones del bucle.
	sumatorio : numerico   // Variables en la que voy almacenando el sumatorio de las sumas parciales.
	continuar : cadena     // Variable para mostrar por pasos en pantalla



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LAS SUMAS PARCIALES DE LOS 100 PRIMEROS NÚMEROS NATURALES\n\n")

	desde i=1 hasta tope {
		imprimir(i, " + ", sumatorio, " = ", i+sumatorio, "\n")
		sumatorio = sumatorio + i
		si (i%20==0) {
				imprimir("\n- Presiona enter para continuar -\n")          // Condicional para introducir una pausa en la ejecución del programa
				leer(continuar)
		}
	}


fin