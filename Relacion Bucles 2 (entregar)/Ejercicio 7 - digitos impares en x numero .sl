/*

Ejercicio 7
===========

OBJETIVO: Programa que dice todos los dígitos impares que hay en un numero introducido por el usuario.

OBSERVACION: - Reciclo los programas anteriores para obtener un vector con cada una de las cifras e imprimir sólo
				   las cifras impares del vector ya construído.
				 - Considero en el programa que no hay ningún número impar

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-oct-2014

*/

var

	 cifras : numerico                 // Variable donde almacenaré el dato introducido por el usuario entre 0 y 9.999.999.999 (10 cifras)
	  cifra : vector [10] numerico     // Vector para almacenar cada una de las cifras de la varible 'cifras' de manera inversa.
	  resto : numerico                 // Cifra que voy obteniendo una a una en el bucle y almaceno en el vector.
		i, j : numerico                 // Variables de control para las iteraciones.
	impares : logico                   // Variable lógica para mostrar un mensaje en el caso de que no haya números impares.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LOS DÍGITOS IMPARES DEL NÚMERO INTRODUCIDO")

	repetir
		imprimir ("\n\nIntroduce un número natural entre 0 y 9.999.999.999 (sin puntos): ")
		leer(cifras)
	hasta (cifras>=0 and cifras<=9999999999)

   impares=NO                                  //
	i=0                                         // Ambas variables ('i' e 'impares'), por defecto son igual a NO y 0, pero lo defino para hacérselo saber a quien lea el programa. 
	repetir
			i = i + 1                             // En este caso, 'i' me está sirviendo como contador que utilizaré en el siguiente bucle y paara almacenar posición en el vector.
			resto = cifras % 10
			cifra[i] = resto
			cifras = (cifras - resto) / 10
	hasta (cifras==0)

	imprimir ("\nLos dígitos impares del número introducido son: ")
	desde j=i hasta 1 paso -1 {                 // Quiero mostrar los números impares de manera ordenada (no inversamente como están guardados en el vector)
		si (cifra[j]<>0 and cifra[j]%2<>0) {     // Condicional para imprimir sólo los números impares y diferentes a 0.
			imprimir(cifra[j], " ")
			impares=SI
		}
	}

	si(not(impares)) {
		imprimir("¡Ninguno!")                    // Mensaje que se añade al anterior en caso de no haber números impares que mostrar.
	}

fin