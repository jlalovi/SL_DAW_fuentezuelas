/*

Ejercicio 14
============

OBJETIVO: Desarrollar un algoritmo al que se le den dos enteros y determine si dichos números son amigos. 
			 Dos números a y b son amigos si la suma de los divisores de a coincide con b y viceversa.

OBSERVACION: - Estoy reciclando el algoritmo del ejercicio anterior salvo algunos cambios comentados.
				 - Según Wikipedia: "Dos números amigos son dos números enteros positivos a y b tales que
				   la suma de los divisores propios de uno es igual al otro numero y viceversa, es decir, 
					s(a)=b y s(b)=a, donde s(n) es igual a la suma de los divisores de n, sin incluir a n. 
					(La unidad se considera divisor propio, pero no lo es el mismo número.)". Por tanto,
					no consideraré el mismo número como divisor propio en el algoritmo.
				 - Ya puestos, aunque no forme parte del ejercicio, ya que lo he leído en Wikipedia, añadiré
					si el número es perfecto: "Si un número es amigo de sí mismo (es igual a la suma de sus 
					divisores propios), recibe entonces el nombre de número perfecto."

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 03-nov-2014

*/

var

							n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos números serán de los que se realizará la operación máximo común divisor.
							  i, j : numerico             // Variables de iteración para los bucles.
	    contador1, contador2 : numerico             // Variables que me servirán para contar el número de divisibles de cada número, para saber el tope de cada vector.
	divisibles1, divisibles2 : vector[20] numerico  // Vectores donde almacenaré los números divisibles de cada número introducido por el usuario.
					suma1, suma2 : numerico             // Suma de los números divisibles almacenados en cada uno de los vectores ('divisibles1' y 'divisibles2').

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA SI DOS NÚMEROS SON AMIGOS")

	repetir
		imprimir("\n\nIntroduce el primer número (de 0-1000): ")
		leer (n1)
	hasta (n1>=0 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo número (de 0-1000): ")
		leer (n2)
	hasta (n2>=0 and n2<=1000)

	contador1 = 0                      //
	contador2 = 0                      // Las variables numércias tienen un valor inicial de 0 en SLE, pero lo pondré para crear hábito.

	// DIVISIBLES PROPIOS DEL NÚMERO 1
	si (n1%2==0) {                     //
		desde i=1 hasta n1/2 {          // Para números pares. A diferencia del ejercicio anterior, aquí sí cuento el 1 en el vector (en este bucle y los siguientes)
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	sino                               //
		desde i=1 hasta (n1+1)/2 {      // Para números impares
			si(n1%i==0) {
				contador1 = contador1+1
				divisibles1[contador1] = i
			}
		}
	}

	suma1 = 0                          //
	desde i=1 hasta contador1 {        // En este bucle sumo los números divisibles del primer número.
		suma1 = suma1 + divisibles1[i]  //
	}

	// DIVISIBLES PROPIOS DEL NÚMERO 2
	si (n2%2==0) {                     //
		desde i=1 hasta n2/2 {          // Para números pares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	sino                               //
		desde i=1 hasta (n2+1)/2 {      // Para números impares
			si(n2%i==0) {
				contador2 = contador2+1
				divisibles2[contador2] = i
			}
		}
	}

	suma2 = 0                          //
	desde i=1 hasta contador2 {        // En este bucle sumo los números divisibles del segundo número.
		suma2 = suma2 + divisibles2[i]  //
	}

	si (suma1 == n2 and suma2 == n1) {
		imprimir("\nLos números introducidos ", n1, " y ", n2, " son amigos.",                   // Ej: n1=220 y n2=284
					"\n\nLa suma de los divisores propios son:",
					"\n", suma1, " para el primero y ", suma2, " para el segundo.")
	sino
		imprimir("\nLos números introducidos ", n1, " y ", n2, " NO son amigos.",                // Ej: n1=50 y n2=70
					"\n\nLa suma de los divisores propios son:",
					"\n", suma1, " para el primero y ", suma2, " para el segundo.")

		// PARTE EXTRA PARA INDICAR SI SON NÚMEROS PERFECTOS
		// Como un número amigo de sí mismo no va a poder ser amigo de otro número diferente, los mensajes siguientes siguen la coherencia del anterior.
		si (suma1==n1 and suma2==n2) {
			imprimir("\n\nSin embargo, ", n1, " y ", n2, " son números perfectos,",  
						"\nya que cada uno de ellos es la suma de sus números divisibles propios")   // Ej: n1=28 y n2=496
		sino
			si (suma1 == n1) {
				imprimir("\n\nSin embargo, ", n1, " es un número perfecto,",
							"\nya que es la suma de sus números divisibles propios.")                 // Ej: n1=496 y n2=700
			}
			si (suma2 == n2) {
				imprimir("\n\nSin embargo, ", n2, " es un número perfecto", 
							"\nya que es la suma de sus números divisibles propios.")                 // Ej: n1=500 y n2==496
			}
		}

	}

fin