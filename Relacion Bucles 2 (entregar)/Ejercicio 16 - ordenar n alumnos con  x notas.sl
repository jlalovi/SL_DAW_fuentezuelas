/*

Ejercicio 16
============

OBJETIVO: Igual al anterior, pero para un n�mero de asignaturas tambi�n seleccionable por el usuario (m�ximo 10), 
			 es decir, se pedir�n los nombres y x notas (las que haya dicho el usuario) para cada alumno y despu�s 
			 se muestra una lista ordenada alfab�ticamente.

OBSERVACI�N: - Estoy reusando el algoritmo del ejercicio 15. Es igual, salvo que nota[] es una matriz, y algunos cambios
				   para adaptar dicha modificaci�n.
				 - Por cuestiones de presentaci�n y limitaciones de SLE, el n�mero de notas elegido por el usuario, ser�
				   el mismo para todos los alumnos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 03-nov-2014

*/

var

	nAlumn : numerico                   // 'N' alumnos que el usuario quiere introducir.
	nNotas : numerico                   // 'N' notas que el usuario quiere introducir.
	alumno : vector [100] cadena        // Vector para almacenar cada uno de los alumnos, hasta un m�ximo de 100.
	  nota : matriz [100, 10] numerico  // Matriz para almacenar cada una de las notas de los alumnos. El n�mero de notas ser� de 10.
		i,j : numerico                   // Variables de control para las iteraciones de los bucles. 'i' ser� para iterar entre filas y 'j' entre columnas de la matriz.
	  auxC : cadena                     // Variable auxiliar para hacer intercambios de valores de cadena.
	  auxN : numerico                   // Variable auxiliar para hacer intercambios de valores num�ricos.
	salida : logico         		      // Sale del bucle 'repetir', si este es verdadero (cuando no hay cambios).
		

inicio

	cls()

	imprimir ("PROGRAMA QUE ORDENA ALFAB�TICAMENTE UN N�MERO 'X' DE ALUMNOS CON SUS NOTAS")

	repetir
		imprimir ("\n\nIntroduce el n�mero de alumnos que deseas introducir (entre 1 y 100): ")
		leer(nAlumn)
	hasta (nAlumn>=1 and nAlumn<=100)

	repetir                            // Bucle para preguntar por n�mero de notas por alumno a registrar.
		imprimir ("\n�Cu�ntas notas quieres registrar por alumno? (entre 1 y 10): ")
		leer(nNotas)
	hasta (nNotas>=1 and nNotas<=10)

	desde i=1 hasta nAlumn {
		imprimir("\nIntroduce el nombre y apellido del alumno ", i, ": ")
		leer(alumno[i])
		desde j=1 hasta nNotas {        // Cambios relacionados con la matriz.
			imprimir("\nIntroduce la nota ", j," correspondiente al alumno '", alumno[i], "': ")
			leer(nota[i,j])
			si(nota[i,j]<0 or nota[i,j]>10) {
				repetir
					imprimir("\nPor favor, la nota debe comprender entre 0 y 10. Introd�cela de nuevo: ")
					leer(nota[i,j])
				hasta (nota[i,j]>=0 and nota[i,j]<=10)
			}
		}
	}

	repetir
		salida = SI                        // Al principio del bucle repetir, presumir� que no se entrar� en el condicional siguiente. Si no entra, ya estar� todo ordenado.
		desde i=1 hasta nAlumn-1 {         // Ya que voy a comprar parejas, el �ltimo paso ser� 'i' e 'i+1', por tanto, el tope en el bucle ser� hasta 'nAlumn-1'.
			si (alumno[i]>alumno[i+1]) {    // Ordenar� por parejas. Si el primer n�mero es mayor que el segundo, realizo un intercambio.

				auxC = alumno[i]             //
				alumno[i] = alumno[i+1]      // Intercambios en vector alumno[]
				alumno[i+1] = auxC           //

				desde j=1 hasta nNotas {     //
					auxN = nota[i,j]          // Intercambios equivalentes a los anteriores en la matriz nota[].
					nota[i,j] = nota [i+1,j]  // Lamentablemente tengo que pasar por todas las columnas, no puedo intercambiar directamente una fila con todas sus columnas directamente.
					nota[i+1,j] = auxN        //
				}

				salida = NO                  // Si se entra en este condicional, no permitir� salir del bucle repetir.
			}
		}
	hasta (salida)
	

	imprimir("\nLos alumnos ordenados alfab�ticamente con sus correspondientes notas son:")
	desde i=1 hasta nAlumn {
		imprimir("\n ", alumno[i], " :")
		desde j=1 hasta nNotas {
			imprimir(" ", nota[i,j])
		}
	}


fin