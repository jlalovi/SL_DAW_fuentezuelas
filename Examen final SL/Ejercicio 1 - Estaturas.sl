/*

Examen - Ejercicio 1
====================

OBJETIVO: Enunciado en el examen.

OBSERVACIONES:
	- En el ejercicio, añado dos subrutinas: subrayar() y leer_numero(numero). Ver final del programa para más detalles.

AUTOR: Javier Latorre López-Villalta -> jlalovi@gmail.com

FECHA: 11-nov-2014

*/

var

			 estatura: numerico      // Estatura que introduce el usuario. Se trabajará con ella y desaparecerá con la siguiente altura introducida.
	total_estaturas: numerico      // Número total de alturas introducidas por el usuario.
	 estatura_media: numerico      // Media de las alturas introducidas.
	     sumatorio : numerico      // Suma de alturas para conocer la 'estatura_media'
	estatura_minima: numerico		  // Altura más baja introducida.
	estatura_maxima: numerico		  // Altura más baja introducida.
			  n_bajos: numerico	     // Número de alturas entre (150 y 165)
		  n_normales: numerico		  // Número de alturas entre (166 y 185)
           n_altos: numerico		  // Número de alturas entre (>185)

inicio

	cls()

	subrayar ("ESTE PROGRAMA MUESTRA UNOS DATOS A PARTIR LAS ESTATURAS INTRODUCIDAS")    // Subrutina 'subrayar()'. Ver final del programa.

	// ASIGNACIÓN Y PROCESAMIENTO DE LOS DATOS

	repetir
		imprimir("Introduce una estatura: ")
		leer_numero(estatura)  // Subrutina 'leer_numero(numero)'. Ver final del programa.
		si (estatura <> 0 and estatura<150 or estatura>200) {  // Si la altura es diferente a 0 y menor que 150 o mayor que 200, mando un mensaje de error.
			repetir
				imprimir("Por favor, introduce una estatura válida entre 150 y 200 (ambas inclusives): ")
				leer_numero(estatura)
			hasta (estatura>=150 and estatura <=200)
		}
		si (estatura <> 0) {                              // Si el dato es válido y distinto de 0:
			total_estaturas = total_estaturas + 1          // Una vez pasada la condición anterior, empiezo a trabajar con los datos válidos.
			sumatorio = estatura + sumatorio
			estatura_media = sumatorio / total_estaturas   // Estatura media a partir del sumatorio y el total de estaturas.
			si (total_estaturas == 1) {                    // La primera estatura introducida será la máxima y la mínima.
				estatura_minima = estatura
				estatura_maxima = estatura
			}
			si (estatura>estatura_maxima) {                // Compruebo si la altura introducida es mayor que la almacenada.
				estatura_maxima = estatura
			}
			si (estatura<estatura_minima) {                // Compruebo si la altura introducida es menor que la almacenada.
				estatura_minima = estatura
			}
			si (estatura>=150 and estatura<=165) {
				n_bajos = n_bajos + 1
			}
			si (estatura>165 and estatura<=185) {
				n_normales = n_normales + 1
			}
			si (estatura>=185) {
				n_altos = n_altos + 1
			}
		}
	hasta (estatura == 0)  // Condición para dejar de introducir estaturas

	// IMPRIMIMOS LOS DATOS PROCESADOS POR PANTALLA:
	
	imprimir("\n- El número total de estaturas introducidas es: ", total_estaturas)
	imprimir("\n- La estatura media es: ", estatura_media)
	imprimir("\n- La estatura máxima es: ", estatura_maxima)
	imprimir("\n- La estatura minima es: ", estatura_minima)
	imprimir("\n- El número de bajos es: ", n_bajos)
	imprimir("\n- El número de normales es: ", n_normales)
	imprimir("\n- El número de altos es: ", n_altos)

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

