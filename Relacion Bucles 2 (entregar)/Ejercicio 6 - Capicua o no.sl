/*

Ejercicio 6
===========

OBJETIVO: Programa que le pide al usuario un número(de una o más cifras), y muestra por pantalla si el
			 numero introducido es CAPICUA (se lee igual de inicio a fin que de fin a inicio).

OBSERVACION: Considero que un número capicúa debe de tener 2 o más cifras.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-oct-2014

*/

var

	cifras  : numerico                 // Variable donde almacenaré el dato introducido por el usuario entre 0 y 9.999.999.999 (10 cifras)
	cifra   : vector [10] numerico     // Vector para almacenar cada una de las cifras de la varible 'cifras' de manera inversa.
	resto   : numerico                 // Cifra que voy obteniendo una a una en el bucle y almaceno en el vector.
	i, j    : numerico                 // Variables de control para las iteraciones.
	capicua : logico                   // Variable lógica que me indicará si el número es capicúa o no.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA SI EL NÚMERO INTRODUCIDO ES CAPICÚA")

	repetir
		imprimir ("\n\nIntroduce un número natural entre 0 y 9.999.999.999 (sin puntos): ")
		leer(cifras)
	hasta (cifras>=0 and cifras<=9999999999)

	i=0
	repetir
			i = i + 1                        // En este caso, 'i' me está sirviendo como contador que utilizaré en el siguiente bucle y paara almacenar posición en el vector.
			resto = cifras % 10
			cifra[i] = resto
			cifras = (cifras - resto) / 10
	hasta (cifras==0)

	si (i>1) {                             // Considero que un número puede ser capicúa si tiene más de una cifra.
		capicua = SI                        // Antes de comprobar si el número es capicúa, presumiré que lo es.
		desde j=1 hasta i { 
			si (cifra[j]<>cifra[i+1-j]) {    // Compruebo la primera posición del vector con la última, comprobando si son diferentes, e iré aumentando y reduciendo ambas posiciones en el bucle.
				capicua = NO
			}
		}
		si(capicua) {
			imprimir("\nEl número es capicúa.")
		sino
			imprimir("\nEl número NO es capicúa.")
		}
	sino
		imprimir("\n¡El número introducido tiene una sóla cifra! Por tanto, no lo considero capicúa.")
	}

fin