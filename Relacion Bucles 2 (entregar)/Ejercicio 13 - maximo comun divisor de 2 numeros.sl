/*

Ejercicio 13
============

OBJETIVO: Calcular el m�ximo com�n divisor de dos n�meros.

OBSERVACION: - Hay formas mucho m�s sencillas de realizar el ejercicio, pero quer�a complicar el ejercicio oblig�ndome a comparar dos vectores,
				   para practicar con bucles anidados.
				 - En el programa almaceno los n�meros divisibles de cada uno de los n�meros introducidos por el usuario en dos vectores.
				 - No cuento el 1 ni el mismo n�mero como divisibles para ahorrar iteraciones en los bucles. Sin embargo si cuento con ellos por otros medios.
				 - Obligo al usuario a introducir valores entre 0 a 1000 por limitaciones del SLE en los procesamientos que quiero realizar.
				 - Ning�n n�mero entre 0 y 1000 tendr� m�s de 20 divisores, por lo que los vectores los defino con 20 posiciones.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 01-nov-2014

*/

var

							n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos n�meros ser�n de los que se realizar� la operaci�n m�ximo com�n divisor.
							  i, j : numerico             // Variables de iteraci�n para los bucles.
	    contador1, contador2 : numerico             // Variables que me servir�n para contar el n�mero de divisibles de cada n�mero, para saber el tope de cada vector.
	divisibles1, divisibles2 : vector[20] numerico  // Vectores donde almacenar� los n�meros divisibles de cada n�mero introducido por el usuario.
							   mcd : numerico             // En esta variable almacenar� el M�ximo Com�n Divisor de los dos n�meros.

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL M�XIMO COM�N DIVISOR DE DOS N�MEROS")

	repetir
		imprimir("\n\nIntroduce el primer n�mero (de 0-1000): ")
		leer (n1)
	hasta (n1>=0 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo n�mero (de 0-1000): ")
		leer (n2)
	hasta (n2>=0 and n2<=1000)

	contador1 = 0                      //
	contador2 = 0                      // Los contadores por defecto tienen un valor inicial de 0 en SLE, pero lo pondr� para crear h�bito.

	// DIVISIBLES DEL N�MERO 1
	si (n1%2==0) {                     //
		desde i=2 hasta n1/2 {          // Para n�meros pares
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	sino                               //
		desde i=2 hasta (n1+1)/2 {      // Para n�meros impares
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	}
   divisibles1[contador1+1] = n1      // Un n�mero es divisible por s� mismo, por lo que reservo el mismo n�mero para la �ltima posici�n que no he contado en los bucles anteriores.
	contador1 = contador1 + 1          // Y evidentemente, el 'contador1' aumenta a 1 al introducir una posici�n m�s al vector 'divisibles1'

	// DIVISIBLES DEL N�MERO 2
	si (n2%2==0) {                     //
		desde i=2 hasta n2/2 {          // Para n�meros pares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	sino                               //
		desde i=2 hasta (n2+1)/2 {      // Para n�meros impares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	}
	divisibles2[contador2+1] = n2      // Lo mismo que l�nea 62.
	contador2 = contador2+1            // Lo mismo que l�nea 63.

	mcd = 1                                                   // En el caso de que ninguna de las condiciones siguientes se lleve a cabo, mcd ser� 1.
	si (divisibles1[contador1] == divisibles2[contador2]) {   // Compruebo si el �ltimo divisible de n1 es IGUAL que el �ltimo divisible de n2.
		mcd = divisibles1[contador1]                           // En ese caso, ese n�mero, ese �ltimo n�mero ser� el MCD de ambos.

	sino si (divisibles1[contador1] > divisibles2[contador2]) // Compruebo si el �ltimo divisible de n1 es MAYOR que el �ltimo divisible de n2,
		desde i=contador2 hasta 1 paso -1 {                    // para empezar el primer bucle con el divisor m�s alto de n2 y empezar a buscar
			desde j = contador1 hasta 1 paso -1 {					 // el pr�ximo divisor m�s alto de n1 que sea igual al de n2 a partir de 2 bucles.
				si (mcd<>1) {                                    // Para que no almacene de nuevo valores en mcd una vez almacenado el primero en el siguiente condicional.
				sino si (divisibles1[j] == divisibles2[i])
					mcd = divisibles1[j]
				}
			}
		}
	sino  																	 // Aqu� hago lo mismo teniendo en cuenta que el �ltimo divisible de n2 es mayor.
		desde i=contador1 hasta 1 paso -1 {
			desde j = contador2 hasta 1 paso -1 {
				si (mcd<>1) {
				sino si (divisibles2[j] == divisibles1[i])
					mcd = divisibles2[j]
				}
			}
		}
	}

	imprimir("\nEl m�ximo com�n divisor de los n�meros ", n1, " y ", n2, " es ", mcd)

fin