/*

Ejercicio 14
============

OBJETIVO: Desarrollar un algoritmo al que se le den dos enteros y determine si dichos n�meros son amigos. 
			 Dos n�meros a y b son amigos si la suma de los divisores de a coincide con b y viceversa.

OBSERVACION: - Estoy reciclando el algoritmo del ejercicio anterior salvo algunos cambios comentados.
				 - Seg�n Wikipedia: "Dos n�meros amigos son dos n�meros enteros positivos a y b tales que
				   la suma de los divisores propios de uno es igual al otro numero y viceversa, es decir, 
					s(a)=b y s(b)=a, donde s(n) es igual a la suma de los divisores de n, sin incluir a n. 
					(La unidad se considera divisor propio, pero no lo es el mismo n�mero.)". Por tanto,
					no considerar� el mismo n�mero como divisor propio en el algoritmo.
				 - Ya puestos, aunque no forme parte del ejercicio, ya que lo he le�do en Wikipedia, a�adir�
					si el n�mero es perfecto: "Si un n�mero es amigo de s� mismo (es igual a la suma de sus 
					divisores propios), recibe entonces el nombre de n�mero perfecto."

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 03-nov-2014

*/

var

							n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos n�meros ser�n de los que se realizar� la operaci�n m�ximo com�n divisor.
							  i, j : numerico             // Variables de iteraci�n para los bucles.
	    contador1, contador2 : numerico             // Variables que me servir�n para contar el n�mero de divisibles de cada n�mero, para saber el tope de cada vector.
	divisibles1, divisibles2 : vector[20] numerico  // Vectores donde almacenar� los n�meros divisibles de cada n�mero introducido por el usuario.
					suma1, suma2 : numerico             // Suma de los n�meros divisibles almacenados en cada uno de los vectores ('divisibles1' y 'divisibles2').

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA SI DOS N�MEROS SON AMIGOS")

	repetir
		imprimir("\n\nIntroduce el primer n�mero (de 0-1000): ")
		leer (n1)
	hasta (n1>=0 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo n�mero (de 0-1000): ")
		leer (n2)
	hasta (n2>=0 and n2<=1000)

	contador1 = 0                      //
	contador2 = 0                      // Las variables num�rcias tienen un valor inicial de 0 en SLE, pero lo pondr� para crear h�bito.

	// DIVISIBLES PROPIOS DEL N�MERO 1
	si (n1%2==0) {                     //
		desde i=1 hasta n1/2 {          // Para n�meros pares. A diferencia del ejercicio anterior, aqu� s� cuento el 1 en el vector (en este bucle y los siguientes)
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	sino                               //
		desde i=1 hasta (n1+1)/2 {      // Para n�meros impares
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	}

	suma1 = 0                          //
	desde i=1 hasta contador1 {        // En este bucle sumo los n�meros divisibles del primer n�mero.
		suma1 = suma1 + divisibles1[i]  //
	}

	// DIVISIBLES PROPIOS DEL N�MERO 2
	si (n2%2==0) {                     //
		desde i=1 hasta n2/2 {          // Para n�meros pares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	sino                               //
		desde i=1 hasta (n2+1)/2 {      // Para n�meros impares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	}

	suma2 = 0                          //
	desde i=1 hasta contador2 {        // En este bucle sumo los n�meros divisibles del segundo n�mero.
		suma2 = suma2 + divisibles2[i]  //
	}

	si (suma1 == n2 and suma2 == n1) {
		imprimir("\nLos n�meros introducidos ", n1, " y ", n2, " son amigos.",                   // Ej: n1=220 y n2=284
					"\n\nLa suma de los divisores propios son:",
					"\n", suma1, " para el primero y ", suma2, " para el segundo.")
	sino
		imprimir("\nLos n�meros introducidos ", n1, " y ", n2, " NO son amigos.",                // Ej: n1=50 y n2=70
					"\n\nLa suma de los divisores propios son:",
					"\n", suma1, " para el primero y ", suma2, " para el segundo.")

		// PARTE EXTRA PARA INDICAR SI SON N�MEROS PERFECTOS
		// Como un n�mero amigo de s� mismo no va a poder ser amigo de otro n�mero diferente, los mensajes siguientes siguen la coherencia del anterior.
		si (suma1==n1 and suma2==n2) {
			imprimir("\n\nSin embargo, ", n1, " y ", n2, " son n�meros perfectos,",  
						"\nya que cada uno de ellos es la suma de sus n�meros divisibles propios")   // Ej: n1=28 y n2=496
		sino
			si (suma1 == n1) {
				imprimir("\n\nSin embargo, ", n1, " es un n�mero perfecto,",
							"\nya que es la suma de sus n�meros divisibles propios.")                 // Ej: n1=496 y n2=700
			}
			si (suma2 == n2) {
				imprimir("\n\nSin embargo, ", n2, " es un n�mero perfecto", 
							"\nya que es la suma de sus n�meros divisibles propios.")                 // Ej: n1=500 y n2==496
			}
		}

	}

fin