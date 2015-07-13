/*

Ejercicio 5
===========

OBJETIVO: Escribe un programa que dado un número entero lo descomponga dígito a dígito, lo vuelva a
			 componer al revés y lo muestre. Por ejemplo: si le datos el número 187365, el programa 
			 mostrará 563781.

OBSERVACION: Como este programa es una prueba, establezco el límite del vector en 10, para representar
				 sólo 10 cifras.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-oct-2014

*/

var

	cifras  : numerico                 // Variable donde almacenaré el dato introducido por el usuario entre 0 y 9.999.999.999 (10 cifras)
	cifrasI : numerico                 // Variable para almacenar el dato introducido a la inversa.
	cifra   : vector [10] numerico     // Vector para almacenar cada una de las cifras de la varible 'cifras' de manera inversa.
	resto   : numerico                 // Cifra que voy obteniendo una a una en el bucle y almaceno en el vector.
	i, j    : numerico                 // Variables de control para las iteraciones.
	e       : numerico					  // Variable que utilizaré en un bucle para indicar el valor de un exponente.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE INVIERTE LAS CIFRAS DEL VALOR INTRODUCIDO")

	repetir
		imprimir ("\n\nIntroduce un número natural entre 0 y 9.999.999.999 (sin puntos): ")
		leer(cifras)
	hasta (cifras>=0 and cifras<=9999999999)

	i=0
	repetir
			i = i + 1                          // En este caso, 'i' me está sirviendo como contador que utilizaré en el siguiente bucle y paara almacenar posición en el vector.
			resto = cifras % 10
			cifra[i] = resto
			cifras = (cifras - resto) / 10
	hasta (cifras==0)

	cifrasI = 0
	e = i-1                                  // El valor inicial de 'e' será el registrado en 'i-1' en el bucle anterior.
	desde j=1 hasta i {                      // Como he indicado anteriormente, 'i' actúa en este bucle como tope, que he creado por medio de un contador en el bucle anterior.
		cifrasI= cifrasI + cifra[j] * 10^(e)  // Ej. 1234 = 1*10^3 + 2*10^2 + 3*10^1 + 4*10^0
		e = e - 1                             // Quiero que en el siguiente bucle, el valor del exponente 'e', sea 'e-1'.
	}

	imprimir ("\nTeniendo en cuenta que el número almacenado en una variable numérica no",
				 "\nalmacenará los ceros a la izquierda:")
	imprimir ("\n\nEl inverso del número introducido almacenado en una variable numérica es:\n", cifrasI, ".") // No almacena, y por tanto, no imprime los '0' a la izquierda.

	imprimir ("\n\nEl inverso del número introducido almacenado en el vector es:\n")                           // Imprime los '0' a la izquierda.
	desde j=1 hasta i {
		imprimir(cifra[j], " ")
	}

fin