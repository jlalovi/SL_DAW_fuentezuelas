/*

Ejercicio 13
============

OBJETIVO: Calcular el m�ximo com�n divisor de dos n�meros.

OBSERVACION: - Obligo al usuario introducir n�meros entre 1 y 1000

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 01-nov-2014

*/

var

       n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos n�meros ser�n de los que se realizar� la operaci�n m�ximo com�n divisor.
			 aux : numerico			    // Variable para intercambiar valores de las variables.
			   i : numerico             // Variable para iterar en los bucles.
	  contador : numerico             // Variable que me servir� para contar el n�mero de divisibles del n�mero menor, para que act�e como tope del bucle.
	divisibles : vector[20] numerico  // Vectores donde almacenar� los n�meros divisibles de cada n�mero introducido por el usuario.
			 mcd : numerico             // En esta variable almacenar� el M�ximo Com�n Divisor de los dos n�meros.

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL M�XIMO COM�N DIVISOR DE DOS N�MEROS")

	repetir
		imprimir("\n\nIntroduce el primer n�mero (entre 1 y 1000): ")
		leer (n1)
	hasta (n1>=0 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo n�mero (entre 1 y 1000): ")
		leer (n2)
	hasta (n2>=0 and n2<=1000)

	si (n1>n2) {    // Si n1 es mayor, intercambio valores para descomponer en divisibles el n�mero menor.
		aux = n1
		n1 = n2
		n2 = aux
	}

	contador = 0   // Inicializo el contador a 0 (aunque ya sea este su valor por defecto)

	// CREO UN VECTOR CON LOS DIVISIBLES DEL N�MERO M�S PEQUE�O
	si (n1%2==0) {                     //
		desde i=1 hasta n1/2 {          // Para n�meros pares, itero hasta n1/2 para realizar menos iteraciones innecesarias.
			si(n1%i==0) {
				contador = contador+1
				divisibles[contador] = i
			}
		}
	sino                               //
		desde i=1 hasta (n1+1)/2 {      // Para n�meros impares, itero hasta (n1+1)/2 para realizar menos iteraciones innecesarias.
			si(n1%i==0) {
				contador = contador+1
				divisibles[contador] = i
			}
		}
	}
   divisibles[contador+1] = n1      // Un n�mero es divisible por s� mismo. Al no contar este n�mero en las iteraciones, lo a�ado ahora.
	contador = contador + 1          // Y evidentemente, el 'contador1' aumenta a 1 al introducir una posici�n m�s al vector 'divisibles1'

	repetir                          // En este bucle compruebo cada divisible del bucle desde el final hasta el principio. Saldr� del bucle cuando encuentre el m�ximo divisible de n2.
		si (not(n2%divisibles[contador]==0)) {
			contador = contador - 1		// cada iteraci�n del bucle depender� de este contador.	
		}
	hasta (n2%divisibles[contador]==0)

	mcd = divisibles[contador]       // Al salir del bucle, el mcd se almacenar� aqu�.

	imprimir("\nEl m�ximo com�n divisor de los n�meros ", n1, " y ", n2, " es ", mcd)

fin