/*

Ejercicio 7
===========

OBJETIVO: Programa que dice todos los d�gitos impares que hay en un numero introducido por el usuario.

OBSERVACION: - Reciclo los programas anteriores para obtener un vector con cada una de las cifras e imprimir s�lo
				   las cifras impares del vector ya constru�do.
				 - Considero en el programa que no hay ning�n n�mero impar

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-oct-2014

*/

var

	 cifras : numerico                 // Variable donde almacenar� el dato introducido por el usuario entre 0 y 9.999.999.999 (10 cifras)
	  cifra : vector [10] numerico     // Vector para almacenar cada una de las cifras de la varible 'cifras' de manera inversa.
	  resto : numerico                 // Cifra que voy obteniendo una a una en el bucle y almaceno en el vector.
		i, j : numerico                 // Variables de control para las iteraciones.
	impares : logico                   // Variable l�gica para mostrar un mensaje en el caso de que no haya n�meros impares.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LOS D�GITOS IMPARES DEL N�MERO INTRODUCIDO")

	repetir
		imprimir ("\n\nIntroduce un n�mero natural entre 0 y 9.999.999.999 (sin puntos): ")
		leer(cifras)
	hasta (cifras>=0 and cifras<=9999999999)

   impares=NO                                  //
	i=0                                         // Ambas variables ('i' e 'impares'), por defecto son igual a NO y 0, pero lo defino para hac�rselo saber a quien lea el programa. 
	repetir
			i = i + 1                             // En este caso, 'i' me est� sirviendo como contador que utilizar� en el siguiente bucle y paara almacenar posici�n en el vector.
			resto = cifras % 10
			cifra[i] = resto
			cifras = (cifras - resto) / 10
	hasta (cifras==0)

	imprimir ("\nLos d�gitos impares del n�mero introducido son: ")
	desde j=i hasta 1 paso -1 {                 // Quiero mostrar los n�meros impares de manera ordenada (no inversamente como est�n guardados en el vector)
		si (cifra[j]<>0 and cifra[j]%2<>0) {     // Condicional para imprimir s�lo los n�meros impares y diferentes a 0.
			imprimir(cifra[j], " ")
			impares=SI
		}
	}

	si(not(impares)) {
		imprimir("�Ninguno!")                    // Mensaje que se a�ade al anterior en caso de no haber n�meros impares que mostrar.
	}

fin