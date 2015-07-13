/*

Ejercicio 6
===========

OBJETIVO: Pedir un número entre 0 y 9.999, decir si es capicúa.

OBSERVACIONES: - Damos por hecho que el usuario introduce uno de esos números enteros.
				   - En vez de repetir el ejercicio 3, pruebo una solución diferente que va
					  encaminada al desglose por pasos de un algoritmo con bucle.
					- He creado un bucle para obligar al usuario a introducir una cifra entre 0 y 9999.
					- Sin embargo, se da por hecho que el usuario introducirá un valor numérico.
					- Al final del ejercicio considero si el número es de una sóla cifra, para decir que
					  no es capicúa.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 12-oct-2014

*/

var

	       x : numerico    // Valor (0-9999) a introducir por el usuario.
		  aux : numerico    // Variable auxilar para hacer cambios.
	xInverso : numerico    // En esta variable almacenaré el valor de 'x' invertido
	   resto : numerico    // En esta variable almaceno el resto de MOD de 10.

inicio

	cls()

	imprimir ("PROGRAMA PARA SABER SI LA CIFRA INTRODUCIDA ES CAPICÚA:")

	x = -1                                     // Valor x=-1 para entrar en el Bucle
	mientras (x < 0 or x > 9999) {         
		imprimir ("\n\nIntroduce un valor numérico entre 0 y 9999: ")
		leer(x)
	}

	aux = x                                 	 // Ej. x = 1234 = aux
	xInverso = 0
	
	resto = aux % 10                      	    //    resto = 1234 % 10        = 4
	xInverso = resto + xInverso * 10        	 // xInverso = 4 + 0 * 10       = 4 
	aux = (aux - resto) / 10                 	 //      aux = (1234 - 4) / 10  = 123

	si (aux > 0) {
		resto = aux % 10                        //    resto = 123 % 10         = 3
		xInverso = resto + xInverso * 10        // xInverso = 3 + 4 * 10       = 43 
		aux = (aux - resto) / 10                //      aux = (123 - 3) / 10   = 12
	}

	si (aux > 0) {
		resto = aux % 10                        //    resto = 12 % 10          = 2
		xInverso = resto + xInverso * 10        // xInverso = 2 + 43 * 10      = 432 
		aux = (aux - resto) / 10                //      aux = (12 - 2) / 10    = 1
	}

	si (aux > 0) {
		resto = aux % 10                        //    resto = 1 % 10           = 1
		xInverso = resto + xInverso * 10        // xInverso = 1 + 432 * 10     = 4321 
		aux = (aux - resto) / 10                //      aux = (1 - 1) / 10     = 0 
	}

	si (x >= 0 and x < 10) {
		imprimir ("\nEl número introducido es de una sóla cifra, por lo que no tiene capicúa.")
	sino si (x == xInverso)
		imprimir ("\n",x, " es capicúa, ya que su inverso es igual que el original.")
	sino
		imprimir ("\n",x, " no es capicúa, porque su inverso es: ",xInverso,".")
	}

fin