/*

Ejercicio 13
============

OBJETIVO: Calcular el máximo común divisor de dos números.

OBSERVACION: - Obligo al usuario introducir números entre 1 y 1000

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 01-nov-2014

*/

var

       n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos números serán de los que se realizará la operación máximo común divisor.
			 aux : numerico			    // Variable para intercambiar valores de las variables.
			   i : numerico             // Variable para iterar en los bucles.
	  contador : numerico             // Variable que me servirá para contar el número de divisibles del número menor, para que actúe como tope del bucle.
	divisibles : vector[20] numerico  // Vectores donde almacenaré los números divisibles de cada número introducido por el usuario.
			 mcd : numerico             // En esta variable almacenaré el Máximo Común Divisor de los dos números.

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL MÁXIMO COMÚN DIVISOR DE DOS NÚMEROS")

	repetir
		imprimir("\n\nIntroduce el primer número (entre 1 y 1000): ")
		leer (n1)
	hasta (n1>=0 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo número (entre 1 y 1000): ")
		leer (n2)
	hasta (n2>=0 and n2<=1000)

	si (n1>n2) {    // Si n1 es mayor, intercambio valores para descomponer en divisibles el número menor.
		aux = n1
		n1 = n2
		n2 = aux
	}

	contador = 0   // Inicializo el contador a 0 (aunque ya sea este su valor por defecto)

	// CREO UN VECTOR CON LOS DIVISIBLES DEL NÚMERO MÁS PEQUEÑO
	si (n1%2==0) {                     //
		desde i=1 hasta n1/2 {          // Para números pares, itero hasta n1/2 para realizar menos iteraciones innecesarias.
			si(n1%i==0) {
				contador = contador+1
				divisibles[contador] = i
			}
		}
	sino                               //
		desde i=1 hasta (n1+1)/2 {      // Para números impares, itero hasta (n1+1)/2 para realizar menos iteraciones innecesarias.
			si(n1%i==0) {
				contador = contador+1
				divisibles[contador] = i
			}
		}
	}
   divisibles[contador+1] = n1      // Un número es divisible por sí mismo. Al no contar este número en las iteraciones, lo añado ahora.
	contador = contador + 1          // Y evidentemente, el 'contador1' aumenta a 1 al introducir una posición más al vector 'divisibles1'

	repetir                          // En este bucle compruebo cada divisible del bucle desde el final hasta el principio. Saldré del bucle cuando encuentre el máximo divisible de n2.
		si (not(n2%divisibles[contador]==0)) {
			contador = contador - 1		// cada iteración del bucle dependerá de este contador.	
		}
	hasta (n2%divisibles[contador]==0)

	mcd = divisibles[contador]       // Al salir del bucle, el mcd se almacenará aquí.

	imprimir("\nEl máximo común divisor de los números ", n1, " y ", n2, " es ", mcd)

fin