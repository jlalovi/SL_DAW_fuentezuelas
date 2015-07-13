/*

Subrutina ´subrayar' y 'leer_numero'
====================================

OBJETIVO: Crear una subrutina que subraye el título del principio del programa y otra que obligue al usuario a introducir un número.

AUTOR: Javier Latorre López-Villalta -> jlalovi@gmail.com

FECHA: 11-nov-2014

*/

var

	prueba : numerico    // Variable para probar la subrutina 'leer_numero()'

inicio

	cls()

	subrayar ("ESTE PROGRAMA CONTIENE UNA SUBRUTINA QUE SUBRAYA ESTE TÍTULO")

	leer_numero(prueba)

	imprimir("El número introducido es: ", prueba)


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

