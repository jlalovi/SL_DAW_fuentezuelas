/*

Ejercicio 13
============

OBJETIVO: Calcular el máximo común divisor de dos números.

OBSERVACION: - Hay formas mucho más sencillas de realizar el ejercicio, pero quería complicar el ejercicio obligándome a comparar dos vectores,
				   para practicar con bucles anidados.
				 - En el programa almaceno los números divisibles de cada uno de los números introducidos por el usuario en dos vectores.
				 - No cuento el 1 ni el mismo número como divisibles para ahorrar iteraciones en los bucles. Sin embargo si cuento con ellos por otros medios.
				 - Obligo al usuario a introducir valores entre 0 a 1000 por limitaciones del SLE en los procesamientos que quiero realizar.
				 - Ningún número entre 0 y 1000 tendrá más de 20 divisores, por lo que los vectores los defino con 20 posiciones.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 01-nov-2014

*/

var

							n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos números serán de los que se realizará la operación máximo común divisor.
							  i, j : numerico             // Variables de iteración para los bucles.
	    contador1, contador2 : numerico             // Variables que me servirán para contar el número de divisibles de cada número, para saber el tope de cada vector.
	divisibles1, divisibles2 : vector[20] numerico  // Vectores donde almacenaré los números divisibles de cada número introducido por el usuario.
							   mcd : numerico             // En esta variable almacenaré el Máximo Común Divisor de los dos números.

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL MÁXIMO COMÚN DIVISOR DE DOS NÚMEROS")

	repetir
		imprimir("\n\nIntroduce el primer número (de 0-1000): ")
		leer (n1)
	hasta (n1>=0 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo número (de 0-1000): ")
		leer (n2)
	hasta (n2>=0 and n2<=1000)

	contador1 = 0                      //
	contador2 = 0                      // Los contadores por defecto tienen un valor inicial de 0 en SLE, pero lo pondré para crear hábito.

	// DIVISIBLES DEL NÚMERO 1
	si (n1%2==0) {                     //
		desde i=2 hasta n1/2 {          // Para números pares
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	sino                               //
		desde i=2 hasta (n1+1)/2 {      // Para números impares
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	}
   divisibles1[contador1+1] = n1      // Un número es divisible por sí mismo, por lo que reservo el mismo número para la última posición que no he contado en los bucles anteriores.
	contador1 = contador1 + 1          // Y evidentemente, el 'contador1' aumenta a 1 al introducir una posición más al vector 'divisibles1'

	// DIVISIBLES DEL NÚMERO 2
	si (n2%2==0) {                     //
		desde i=2 hasta n2/2 {          // Para números pares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	sino                               //
		desde i=2 hasta (n2+1)/2 {      // Para números impares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	}
	divisibles2[contador2+1] = n2      // Lo mismo que línea 62.
	contador2 = contador2+1            // Lo mismo que línea 63.

	mcd = 1                                                   // En el caso de que ninguna de las condiciones siguientes se lleve a cabo, mcd será 1.
	si (divisibles1[contador1] == divisibles2[contador2]) {   // Compruebo si el último divisible de n1 es IGUAL que el último divisible de n2.
		mcd = divisibles1[contador1]                           // En ese caso, ese número, ese último número será el MCD de ambos.

	sino si (divisibles1[contador1] > divisibles2[contador2]) // Compruebo si el último divisible de n1 es MAYOR que el último divisible de n2,
		desde i=contador2 hasta 1 paso -1 {                    // para empezar el primer bucle con el divisor más alto de n2 y empezar a buscar
			desde j = contador1 hasta 1 paso -1 {					 // el próximo divisor más alto de n1 que sea igual al de n2 a partir de 2 bucles.
				si (mcd<>1) {                                    // Para que no almacene de nuevo valores en mcd una vez almacenado el primero en el siguiente condicional.
				sino si (divisibles1[j] == divisibles2[i])
					mcd = divisibles1[j]
				}
			}
		}
	sino  																	 // Aquí hago lo mismo teniendo en cuenta que el último divisible de n2 es mayor.
		desde i=contador1 hasta 1 paso -1 {
			desde j = contador2 hasta 1 paso -1 {
				si (mcd<>1) {
				sino si (divisibles2[j] == divisibles1[i])
					mcd = divisibles2[j]
				}
			}
		}
	}

	imprimir("\nEl máximo común divisor de los números ", n1, " y ", n2, " es ", mcd)

fin