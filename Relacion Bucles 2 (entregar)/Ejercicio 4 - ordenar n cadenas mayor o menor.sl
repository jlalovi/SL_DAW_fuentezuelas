/*

Ejercicio 4
===========

OBJETIVO: Programa capaz de ordenar un n�mero de cadenas previamente introducidos por teclado. Pide al usuario cuantas 
			 cadenas se desean ordenar y en qu� orden (mayor-menor o menor-mayor, despu�s solicita la introducci�n de dichas 
			 cadenas y finalmente los muestra ordenadas alfab�ticamente o inversamente en funci�n de la opci�n elegida.

OBSERVACI�N: El programa no cambia mucho con respecto al anterior. A�ado un bucle al principio para elegir una opci�n
				 y al final un codicional con bucles para mostrar uno de los �rdenes o el inverso registrados en un s�lo vector.
				 Se podr�an haber creado dos vectores, uno para menor-mayor y otro para mayor-menor, pero considero que esta
				 manera es m�s eficiente.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-oct-2014

*/

var

	     tope : numerico               // 'N' cadenas a ordenar introducidos por el usuario.
		     i : numerico               // Variable de control para las iteraciones del bucle.
	contenido : vector [100] cadena    // Variable para almacenar el n�mero mayor de todos los introducidos.
		   aux : cadena                 // Variable auxiliar para hacer intercambios de valores.
	   salida : logico         		  // Variable para segundo m�todo. Sale del bucle 'repetir', sino hay cambios.
	   opcion : numerico               // Variable para elegir si ordenar de mayor-menor o de menor-mayor.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE ORDENA 'X' CADENAS INDICADAS POR USUARIO Y LAS ORDENA")

	repetir
		imprimir ("\n\nIntroduce cu�ntas cadenas deseas ordenar (entre 1 y 100): ")
		leer(tope)
	hasta (tope>=1 and tope<=100)

	repetir
		imprimir ("\n\nElige una opci�n de las siguientes: ",         // Bucle para obligar a elegir una opci�n. Ordenar de menor-mayor o mayor-menor.
						"\n1. Ordenar alfab�ticamente (a-z).",
						"\n2. Ordenar inversamente (z-a).\n")
		leer(opcion)
	hasta (opcion==1 or opcion==2)

	desde i=1 hasta tope paso 1 {
		imprimir("\nIntroduce el valor de la cadena ", i, " :")
		leer(contenido[i])
	}

	repetir
		salida = SI
		desde i=1 hasta tope-1 {
			si (contenido[i]>contenido[i+1]) {
				aux = contenido[i]
				contenido[i] = contenido[i+1]
				contenido[i+1] = aux
				salida = NO
			}
		}
	hasta (salida)
	
	si (opcion==1) {
		imprimir("\nLas cadenas ordenadas de menor a mayor son:")
		desde i=1 hasta tope paso 1 {
			imprimir(" ", contenido[i])
		}
	sino // (opcion==2)
		imprimir("\nLas cadenas ordenadas de menor a mayor son:")
		desde i=tope hasta 1 paso -1 {   // Imprimir valores del vector inversamente, empezando por el tope y acabando en el principio.
			imprimir(" ", contenido[i])
		}
	}

fin