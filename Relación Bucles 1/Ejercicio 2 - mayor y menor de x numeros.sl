/*

Ejercicio 1
===========

OBJETIVO: Programa que pide n�meros al usuario (hasta que se introduzca un n�mero negativo, que ser� la se�al 
		    de que no se quieren introducir m�s) y calcula el valor m�ximo y el m�nimo  de entre ellos.

OBSERVACIONES: No considero a 0 fuera del rango de n�meros a introducir por el usuario.
					Tambi�n descarto el n�mero negativo introducido para salir como n�mero menor.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

var
 
	           n : numerico   // N�mero introducido por el usuario.
	           i : numerico   // Variable de control para las iteraciones del bucle.
	mayor, menor : numerico   // Variables para almacenar el n�mero mayor y menor de todos los introducidos



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA EL MAYOR Y EL MENOR DE X N�MEROS\n\n")

	mientras (n >= 0) {
		i = i + 1                         // Considerando que 'i' no ha recibido valor alguno todav�a, por defecto empezar� siendo igual a 0.
		imprimir("\nIntroduce el valor del n�mero ", i, ". (Introduce uno negativo para salir): ")
		leer(n)
		si ((i == 1) and (n>=0)) {        // En la primera iteraci�n, almaceno el valor de n en mayor y en menor. No quiero almacenar n�meros negativos, de ah� la segunda condici�n.
			mayor = n
			menor = n
		}
		si (n > mayor) {                  // En cada una de las iteraciones compruebo que el n�mero es mayor que el almacenado. Si es as�, almaceno el nuevo n�mero.
			mayor = n
		}
		si (n < menor and (n>=0)) {       // Al igual que he hecho con 'mayor', lo hago con 'menor'. No quiero almacenar n�meros negativos, de ah� la segunda condici�n.
			menor = n
		}
	}
	
	imprimir("\nEl n�mero mayor es el: ", mayor, " y el menor es el: ", menor)


fin