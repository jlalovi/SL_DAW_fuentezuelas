/*

Ejercicio 1
===========

OBJETIVO: Programa que pide números al usuario (hasta que se introduzca un número negativo, que será la señal 
		    de que no se quieren introducir más) y calcula el valor máximo y el mínimo  de entre ellos.

OBSERVACIONES: No considero a 0 fuera del rango de números a introducir por el usuario.
					También descarto el número negativo introducido para salir como número menor.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

var
 
	           n : numerico   // Número introducido por el usuario.
	           i : numerico   // Variable de control para las iteraciones del bucle.
	mayor, menor : numerico   // Variables para almacenar el número mayor y menor de todos los introducidos



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA EL MAYOR Y EL MENOR DE X NÚMEROS\n\n")

	mientras (n >= 0) {
		i = i + 1                         // Considerando que 'i' no ha recibido valor alguno todavía, por defecto empezará siendo igual a 0.
		imprimir("\nIntroduce el valor del número ", i, ". (Introduce uno negativo para salir): ")
		leer(n)
		si ((i == 1) and (n>=0)) {        // En la primera iteración, almaceno el valor de n en mayor y en menor. No quiero almacenar números negativos, de ahí la segunda condición.
			mayor = n
			menor = n
		}
		si (n > mayor) {                  // En cada una de las iteraciones compruebo que el número es mayor que el almacenado. Si es así, almaceno el nuevo número.
			mayor = n
		}
		si (n < menor and (n>=0)) {       // Al igual que he hecho con 'mayor', lo hago con 'menor'. No quiero almacenar números negativos, de ahí la segunda condición.
			menor = n
		}
	}
	
	imprimir("\nEl número mayor es el: ", mayor, " y el menor es el: ", menor)


fin