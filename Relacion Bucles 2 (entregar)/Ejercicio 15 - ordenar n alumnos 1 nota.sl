/*

Ejercicio 15
============

OBJETIVO: Programa que permite solicitar y almacenar en memoria los nombres  y las nota de los alumnos de una clase
			 (se preguntar� al usuario cuantos alumnos hay en la clase. Como m�ximo podr�n ser 100, debemos asegurarnos
			 de ello), presentando despu�s la lista de estos alumnos con su nota al lado, ordenador alfab�ticamente.

OBSERVACI�N: - Estoy reusando el algoritmo del ejercicio 3.
				 - Podr�a perfeccionar el ejercico para que apareciesen los alumnos ordenados por apellidos, seguidos de una
				   coma ',' y el nombre, pero me voy a limitar en este caso al ejercicio. Por lo que considerar� que el usuario
				   introduce los alumnos por nombre y apellidos y estos aparecer�n ordenados en consecuencia.
			    - Eso s�, obligo al usuario a introducir notas entre 0 y 10 con un bucle y un mensaje de error.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 03-nov-2014

*/

var

	nAlumn : numerico               // 'N' alumnos quer el usuario quiere introducir.
	alumno : vector [100] cadena    // Vector para almacenar cada uno de los alumnos, hasta un m�ximo de 100.
	  nota : vector [100] numerico  // Vector para almacenar cada una de las notas de los alumnos.
		  i : numerico               // Variable de control para las iteraciones de los bucles.
	  auxC : cadena                 // Variable auxiliar para hacer intercambios de valores de cadena.
	  auxN : numerico               // Variable auxiliar para hacer intercambios de valores num�ricos.
	salida : logico         		  // Sale del bucle 'repetir', si este es verdadesr (cuando no hay cambios).
		

inicio

	cls()

	imprimir ("PROGRAMA QUE ORDENA ALFAB�TICAMENTE UN N�MERO 'X' DE ALUMNOS CON SUS NOTAS")

	repetir
		imprimir ("\n\nIntroduce el n�mero de alumnos que deseas introducir (entre 1 y 100): ")
		leer(nAlumn)
	hasta (nAlumn>=1 and nAlumn<=100)

	desde i=1 hasta nAlumn {
		imprimir("\nIntroduce el nombre y apellido del alumno ", i, ": ")
		leer(alumno[i])
		imprimir("\nIntroduce la nota correspondiente al alumno '", alumno[i], "': ")
		leer(nota[i])
		si(nota[i]<0 or nota[i]>10) {
			repetir
				imprimir("\nPor favor, la nota debe comprender entre 0 y 10. Introd�cela de nuevo: ")
				leer(nota[i])
			hasta (nota[i]>=0 and nota[i]<=10)
		}
	}

	repetir
		salida = SI                     // Al principio del bucle repetir, presumir� que no se entrar� en el condicional siguiente. Si no entra, ya estar� todo ordenado.
		desde i=1 hasta nAlumn-1 {      // Ya que voy a comprar parejas, el �ltimo paso ser� 'i' e 'i+1', por tanto, el tope en el bucle ser� hasta 'nAlumn-1'.
			si (alumno[i]>alumno[i+1]) { // Ordenar� por parejas. Si el primer n�mero es mayor que el segundo, realizo un intercambio.

				auxC = alumno[i]          //
				alumno[i] = alumno[i+1]   // Intercambios en vector alumno[]
				alumno[i+1] = auxC        //

				auxN = nota[i]            //
				nota[i] = nota [i+1]      // Intercambios equivalentes a los anteriores en el vector nota[]
				nota[i+1] = auxN          //

				salida = NO               // Si se entra en este condicional, no permitir� salir del bucle repetir.
			}
		}
	hasta (salida)
	

	imprimir("\nLos alumnos ordenados alfab�ticamente con sus correspondientes notas son:")
	desde i=1 hasta nAlumn {
		imprimir("\n ", alumno[i], " : ", nota[i])
	}


fin