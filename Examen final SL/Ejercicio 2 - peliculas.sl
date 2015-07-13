/*

Examen - Ejercicio 2
====================

OBJETIVO: Enunciado en el examen.

OBSERVACIONES:
	- En el ejercicio, a�ado dos subrutinas: subrayar() y leer_numero(numero). Ver final del programa para m�s detalles.
	- En el ejercicio voy a trabajar con 4 vectores del mismo tama�o (m�ximo 100). Podr�a haberlo hecho con una matriz de otra forma, pero
	  se me ha presentado m�s f�cil en la cabeza con los vectores. Si tuviese m�s tiempo, podr�a mejorarlo.

AUTOR: Javier Latorre L�pez-Villalta -> jlalovi@gmail.com

FECHA: 11-nov-2014

*/

var

	  titulo : vector[100] cadena      // T�tulo de la pel�cula.
	  genero : vector[100] cadena      // Tipo de g�nero (Terror, Drama y Comedia).
	   autor : vector[100] cadena      // Nombre del autor.
	duracion : vector[100] numerico    // Duraci�n de la pel�gula (entre 45 y 180 minutos).
	    tope : numerico                // N�mero de pel�culas que el usuario quiere guardar.
			 i : numerico					  // Variable de iteraci�n.
	contador : numerico                // Acumulador que me servir� para contar iteraciones.
	  opcion : numerico                // Opci�n a elegir en el men�.
	 opcionG : cadena                  // Opci�n para g�nero en men�.
	 opcionD : numerico                // Opci�n para duraci�n en men�.

inicio

	cls()

	subrayar ("ESTE PROGRAMA ALMACENA UNA SERIE DE DATOS SOBRE PEL�CULAS Y TRABAJA CON ELLOS")

	// ASIGNACI�N DE DATOS

	imprimir ("�Cu�ntas pel�culas deseas introducir?")   // N�mero de pel�culas que el usuario quiere almacenar en la "Base de Datos".
	repetir
		leer_numero(tope)   // Subrutina leer_numero(numero). Ver descripci�n al final.
		si (tope<=0 or tope>100) {
			imprimir("Por favor, introduce un tope de al menos una pel�cula y un m�ximo de 100: ")
		}
	hasta (tope>0 and tope<=100)

	desde i=1 hasta tope {  // En cada iteraci�n de este bucle, pedir� estos datos:

		// T�TULO
		imprimir("\nIntroduce el t�tulo de la pel�cula ", i, ": ")
		leer (titulo[i])
		si (titulo[i]=="") {
			repetir
				imprimir("\nPor favor introduce un t�tulo: ")
				leer(titulo[i])
			hasta (titulo[i]<>"")
		}

		// G�NERO
		imprimir("\nIntroduce el genero de la pel�cula ", i, ": (T)error, (D)rama o (C)omedia: ")
		leer (genero[i])
		si (genero[i]<>"T" and genero[i]<>"C" and genero[i]<>"D") {
			repetir
				imprimir ("\nPor favor, introduce s�lo la primera letra MAY�SCULA de los g�neros enunciados:(T)error, (D)rama o (C)omedia: ")
				leer(genero[i])
			hasta (genero[i]=="T" or genero[i]=="C" or genero[i]=="D")  // S�lo permitir� estos valores en G�nero.
		}

		// AUTOR
		imprimir("\nIntroduce el nombre del autor de la pel�cula ", i , ": ")
		leer (autor[i])
		si (autor[i]=="") {
			repetir
				imprimir("\nPor favor introduce un nombre de autor: ")
				leer(autor[i])
			hasta (autor[i]<>"")
		}

		// DURACI�N
		imprimir("\nIntroduce la duraci�n en minutos de la pel�cula ", i ,": ")
		repetir
			leer_numero (duracion[i]) // Subrutina leer_numero(numero). Ver descripci�n al final.
			si (duracion[i]<45 or duracion[i]>180) {
				imprimir("\nPor favor, introduce una duraci�n entre 45 y 180 minutos. Ni m�s, ni menos: ")
			}
		hasta (duracion[i]>=45 and duracion[i]<=180) // Obligo al usuario a introducir una duraci�n entre 45 y 180.

	} // fin de desde i=1 hasta tope

	// PROCESAMIENTO DE DATOS:

	repetir

		// MEN�
		subrayar ("MEN� DE LA BASE DE DATOS CREADA SOBRE PEL�CULAS")
		imprimir ("Por favor, selecciona una de las siguientes opciones:")
		imprimir ("\n1.- Buscar pel�culas por g�nero.")
		imprimir ("\n2.- Buscar pel�culas por duraci�n.")
		imprimir ("\n3.- Salir.")
		repetir
			leer_numero(opcion)
			si (opcion<>1 or opcion<>2 or opcion<>3) {
				imprimir("\nPor favor, introduce el n�mero de la opci�n (1, 2 o 3): ")
			}
		hasta (opcion==1 or opcion==2 or opcion==3)

		// OPCI�N 1
		si (opcion==1) {
			imprimir("\nIntroduce el genero de la pel�cula: (T)error, (D)rama o (C)omedia: ")
			leer (opcionG)
			si (opcionG<>"T" and opcionG<>"C" and opcionG<>"D") {
				repetir
					imprimir ("\nPor favor, introduce s�lo la primera letra MAY�SCULA de los g�neros enunciados:(T)error, (D)rama o (C)omedia: ")
					leer(opcionG)
				hasta (opcionG=="T" or opcionG=="C" or opcionG=="D")  // S�lo permitir� estos valores en G�nero.
			}
			desde i=1 hasta tope {
				si (opcionG==genero[i]) {
					imprimir("\nEl g�nero elegido contiene las siguientes pel�culas con su informaci�n: ")
					imprimir("\n T�tulo: ", titulo[i], ". ")
					imprimir("\n G�nero: ", genero[i], ". ")
					imprimir("\n Duraci�n: ", duracion[i], ". ")
					imprimir("\n Nombre de autor: ", autor[i], ".\n\n")
				}
			}
		}

		// OPCI�N 2
		si (opcion==2) {
			imprimir("\nIntroduce la duraci�n m�xima: ")
			repetir
				leer_numero (opcionD) // Subrutina leer_numero(numero). Ver descripci�n al final.
				si (opcionD<45 or opcionD>180) {
					imprimir("\nPor favor, introduce una duraci�n entre 45 y 180 minutos. Ni m�s, ni menos: ")
				}
			hasta (opcionD>=45 and opcionD<=180) // Obligo al usuario a introducir una duraci�n entre 45 y 180.
			desde i=1 hasta tope {
				si (opcionD>=duracion[i]) {
					imprimir("\nTodas las pel�culas de menor duraci�n a la seleccionada, contiene la siguiente informaci�n: ")
					imprimir("\n T�tulo: ", titulo[i], ". ")
					imprimir("\n G�nero: ", genero[i], ". ")
					imprimir("\n Duraci�n: ", duracion[i], ". ")
					imprimir("\n Nombre de autor: ", autor[i], ".\n\n")
				}
			}
		}

		// OPCI�N 3
		si (opcion==3) {
			imprimir("\n��Gracias por usar el programa!!")
			imprimir("\nFdo: Javier Latorre.")
		}

	hasta (opcion==3)


fin



// SUBRUTINAS:
// ==========

// Subrutina para subrayar el t�tulo del programa que aparecer� impreso en consola.

subrutina subrayar (titulo: cadena)

var

	 tope : numerico  // Variable para marcar el final del bucle de la subrutina. El valor 'tope' vendr� dado por el n�mero de caracteres del t�tulo.
		 i : numerico  // Variable para iterar en el bucle de la subrutina para generar tantos '=' como marque la variable 'tope'.
	marca : cadena    // Variable que actuar� como acumulador del n�mero de caracteres que actuar�n como subrayado del t�tulo.
	

inicio

	tope = strlen(titulo)       // Funci�n que cuenta los caract�res que hay el 't�tulo'
	marca = ""                  // Aunque no haga falta, inicializo la variable 'marca' con un valor vac�o.

	desde i=1 hasta tope {
		marca = marca + "="      // Si cambio el '=' por otro car�cter, ser� el nuevo car�cter el que act�e como subrayado del t�tulo.
	}

	imprimir(titulo, "\n", marca, "\n\n")

fin



// Subrutina para leer n�mero y obligar al usuario a introducir un n�mero si �ste introduce un car�cter o cadena de caracteres.

subrutina leer_numero (ref numero: numerico)

var

	respuesta: cadena      // Variable donde almacenar� lo escrito por el usuario en forma de cadena.

inicio

	repetir
		leer(respuesta)
		si ( (respuesta <> "0") and (val(respuesta)==0)) {          // Car�cter introducido diferente a "0" AND val() = 0. Recordar que funci�n val() de un car�cter NO num�rico es 0,
			imprimir ("\nPor favor, introduce un valor numerico: ")  // incluyendo el 0, de ah� que se tienen que cumplir ambas condiciones.
		}
	hasta ((respuesta == "0") or (val(respuesta)<>0))              // Se saldr� del bucle cuando S�LO se de la condici�n de que el caracter es '0' OR val(respuesta) sea diferente a 0,
	numero = val(respuesta)													   // ya que val(respuesta)=0 en este caso se da cuando respuesta es un car�cter NO d�gito (salvo el 0 de la otra condici�n)

fin

