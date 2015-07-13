/*

Examen - Ejercicio 2
====================

OBJETIVO: Enunciado en el examen.

OBSERVACIONES:
	- En el ejercicio, añado dos subrutinas: subrayar() y leer_numero(numero). Ver final del programa para más detalles.
	- En el ejercicio voy a trabajar con 4 vectores del mismo tamaño (máximo 100). Podría haberlo hecho con una matriz de otra forma, pero
	  se me ha presentado más fácil en la cabeza con los vectores. Si tuviese más tiempo, podría mejorarlo.

AUTOR: Javier Latorre López-Villalta -> jlalovi@gmail.com

FECHA: 11-nov-2014

*/

var

	  titulo : vector[100] cadena      // Título de la película.
	  genero : vector[100] cadena      // Tipo de género (Terror, Drama y Comedia).
	   autor : vector[100] cadena      // Nombre del autor.
	duracion : vector[100] numerico    // Duración de la pelígula (entre 45 y 180 minutos).
	    tope : numerico                // Número de películas que el usuario quiere guardar.
			 i : numerico					  // Variable de iteración.
	contador : numerico                // Acumulador que me servirá para contar iteraciones.
	  opcion : numerico                // Opción a elegir en el menú.
	 opcionG : cadena                  // Opción para género en menú.
	 opcionD : numerico                // Opción para duración en menú.

inicio

	cls()

	subrayar ("ESTE PROGRAMA ALMACENA UNA SERIE DE DATOS SOBRE PELÍCULAS Y TRABAJA CON ELLOS")

	// ASIGNACIÓN DE DATOS

	imprimir ("¿Cuántas películas deseas introducir?")   // Número de películas que el usuario quiere almacenar en la "Base de Datos".
	repetir
		leer_numero(tope)   // Subrutina leer_numero(numero). Ver descripción al final.
		si (tope<=0 or tope>100) {
			imprimir("Por favor, introduce un tope de al menos una película y un máximo de 100: ")
		}
	hasta (tope>0 and tope<=100)

	desde i=1 hasta tope {  // En cada iteración de este bucle, pediré estos datos:

		// TÍTULO
		imprimir("\nIntroduce el título de la película ", i, ": ")
		leer (titulo[i])
		si (titulo[i]=="") {
			repetir
				imprimir("\nPor favor introduce un título: ")
				leer(titulo[i])
			hasta (titulo[i]<>"")
		}

		// GÉNERO
		imprimir("\nIntroduce el genero de la película ", i, ": (T)error, (D)rama o (C)omedia: ")
		leer (genero[i])
		si (genero[i]<>"T" and genero[i]<>"C" and genero[i]<>"D") {
			repetir
				imprimir ("\nPor favor, introduce sólo la primera letra MAYÚSCULA de los géneros enunciados:(T)error, (D)rama o (C)omedia: ")
				leer(genero[i])
			hasta (genero[i]=="T" or genero[i]=="C" or genero[i]=="D")  // Sólo permitiré estos valores en Género.
		}

		// AUTOR
		imprimir("\nIntroduce el nombre del autor de la película ", i , ": ")
		leer (autor[i])
		si (autor[i]=="") {
			repetir
				imprimir("\nPor favor introduce un nombre de autor: ")
				leer(autor[i])
			hasta (autor[i]<>"")
		}

		// DURACIÓN
		imprimir("\nIntroduce la duración en minutos de la película ", i ,": ")
		repetir
			leer_numero (duracion[i]) // Subrutina leer_numero(numero). Ver descripción al final.
			si (duracion[i]<45 or duracion[i]>180) {
				imprimir("\nPor favor, introduce una duración entre 45 y 180 minutos. Ni más, ni menos: ")
			}
		hasta (duracion[i]>=45 and duracion[i]<=180) // Obligo al usuario a introducir una duración entre 45 y 180.

	} // fin de desde i=1 hasta tope

	// PROCESAMIENTO DE DATOS:

	repetir

		// MENÚ
		subrayar ("MENÚ DE LA BASE DE DATOS CREADA SOBRE PELÍCULAS")
		imprimir ("Por favor, selecciona una de las siguientes opciones:")
		imprimir ("\n1.- Buscar películas por género.")
		imprimir ("\n2.- Buscar películas por duración.")
		imprimir ("\n3.- Salir.")
		repetir
			leer_numero(opcion)
			si (opcion<>1 or opcion<>2 or opcion<>3) {
				imprimir("\nPor favor, introduce el número de la opción (1, 2 o 3): ")
			}
		hasta (opcion==1 or opcion==2 or opcion==3)

		// OPCIÓN 1
		si (opcion==1) {
			imprimir("\nIntroduce el genero de la película: (T)error, (D)rama o (C)omedia: ")
			leer (opcionG)
			si (opcionG<>"T" and opcionG<>"C" and opcionG<>"D") {
				repetir
					imprimir ("\nPor favor, introduce sólo la primera letra MAYÚSCULA de los géneros enunciados:(T)error, (D)rama o (C)omedia: ")
					leer(opcionG)
				hasta (opcionG=="T" or opcionG=="C" or opcionG=="D")  // Sólo permitiré estos valores en Género.
			}
			desde i=1 hasta tope {
				si (opcionG==genero[i]) {
					imprimir("\nEl género elegido contiene las siguientes películas con su información: ")
					imprimir("\n Título: ", titulo[i], ". ")
					imprimir("\n Género: ", genero[i], ". ")
					imprimir("\n Duración: ", duracion[i], ". ")
					imprimir("\n Nombre de autor: ", autor[i], ".\n\n")
				}
			}
		}

		// OPCIÓN 2
		si (opcion==2) {
			imprimir("\nIntroduce la duración máxima: ")
			repetir
				leer_numero (opcionD) // Subrutina leer_numero(numero). Ver descripción al final.
				si (opcionD<45 or opcionD>180) {
					imprimir("\nPor favor, introduce una duración entre 45 y 180 minutos. Ni más, ni menos: ")
				}
			hasta (opcionD>=45 and opcionD<=180) // Obligo al usuario a introducir una duración entre 45 y 180.
			desde i=1 hasta tope {
				si (opcionD>=duracion[i]) {
					imprimir("\nTodas las películas de menor duración a la seleccionada, contiene la siguiente información: ")
					imprimir("\n Título: ", titulo[i], ". ")
					imprimir("\n Género: ", genero[i], ". ")
					imprimir("\n Duración: ", duracion[i], ". ")
					imprimir("\n Nombre de autor: ", autor[i], ".\n\n")
				}
			}
		}

		// OPCIÓN 3
		si (opcion==3) {
			imprimir("\n¡¡Gracias por usar el programa!!")
			imprimir("\nFdo: Javier Latorre.")
		}

	hasta (opcion==3)


fin



// SUBRUTINAS:
// ==========

// Subrutina para subrayar el título del programa que aparecerá impreso en consola.

subrutina subrayar (titulo: cadena)

var

	 tope : numerico  // Variable para marcar el final del bucle de la subrutina. El valor 'tope' vendrá dado por el número de caracteres del título.
		 i : numerico  // Variable para iterar en el bucle de la subrutina para generar tantos '=' como marque la variable 'tope'.
	marca : cadena    // Variable que actuará como acumulador del número de caracteres que actuarán como subrayado del título.
	

inicio

	tope = strlen(titulo)       // Función que cuenta los caractéres que hay el 'título'
	marca = ""                  // Aunque no haga falta, inicializo la variable 'marca' con un valor vacío.

	desde i=1 hasta tope {
		marca = marca + "="      // Si cambio el '=' por otro carácter, será el nuevo carácter el que actúe como subrayado del título.
	}

	imprimir(titulo, "\n", marca, "\n\n")

fin



// Subrutina para leer número y obligar al usuario a introducir un número si éste introduce un carácter o cadena de caracteres.

subrutina leer_numero (ref numero: numerico)

var

	respuesta: cadena      // Variable donde almacenaré lo escrito por el usuario en forma de cadena.

inicio

	repetir
		leer(respuesta)
		si ( (respuesta <> "0") and (val(respuesta)==0)) {          // Carácter introducido diferente a "0" AND val() = 0. Recordar que función val() de un carácter NO numérico es 0,
			imprimir ("\nPor favor, introduce un valor numerico: ")  // incluyendo el 0, de ahí que se tienen que cumplir ambas condiciones.
		}
	hasta ((respuesta == "0") or (val(respuesta)<>0))              // Se saldrá del bucle cuando SÓLO se de la condición de que el caracter es '0' OR val(respuesta) sea diferente a 0,
	numero = val(respuesta)													   // ya que val(respuesta)=0 en este caso se da cuando respuesta es un carácter NO dígito (salvo el 0 de la otra condición)

fin

