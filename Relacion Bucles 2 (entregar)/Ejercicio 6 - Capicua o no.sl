/*

Ejercicio 6
===========

OBJETIVO: Programa que le pide al usuario un n�mero(de una o m�s cifras), y muestra por pantalla si el
			 numero introducido es CAPICUA (se lee igual de inicio a fin que de fin a inicio).

OBSERVACION: Considero que un n�mero capic�a debe de tener 2 o m�s cifras.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-oct-2014

*/

var

	cifras  : numerico                 // Variable donde almacenar� el dato introducido por el usuario entre 0 y 9.999.999.999 (10 cifras)
	cifra   : vector [10] numerico     // Vector para almacenar cada una de las cifras de la varible 'cifras' de manera inversa.
	resto   : numerico                 // Cifra que voy obteniendo una a una en el bucle y almaceno en el vector.
	i, j    : numerico                 // Variables de control para las iteraciones.
	capicua : logico                   // Variable l�gica que me indicar� si el n�mero es capic�a o no.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA SI EL N�MERO INTRODUCIDO ES CAPIC�A")

	repetir
		imprimir ("\n\nIntroduce un n�mero natural entre 0 y 9.999.999.999 (sin puntos): ")
		leer(cifras)
	hasta (cifras>=0 and cifras<=9999999999)

	i=0
	repetir
			i = i + 1                        // En este caso, 'i' me est� sirviendo como contador que utilizar� en el siguiente bucle y paara almacenar posici�n en el vector.
			resto = cifras % 10
			cifra[i] = resto
			cifras = (cifras - resto) / 10
	hasta (cifras==0)

	si (i>1) {                             // Considero que un n�mero puede ser capic�a si tiene m�s de una cifra.
		capicua = SI                        // Antes de comprobar si el n�mero es capic�a, presumir� que lo es.
		desde j=1 hasta i { 
			si (cifra[j]<>cifra[i+1-j]) {    // Compruebo la primera posici�n del vector con la �ltima, comprobando si son diferentes, e ir� aumentando y reduciendo ambas posiciones en el bucle.
				capicua = NO
			}
		}
		si(capicua) {
			imprimir("\nEl n�mero es capic�a.")
		sino
			imprimir("\nEl n�mero NO es capic�a.")
		}
	sino
		imprimir("\n�El n�mero introducido tiene una s�la cifra! Por tanto, no lo considero capic�a.")
	}

fin