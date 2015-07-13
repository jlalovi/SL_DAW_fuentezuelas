/*

Subrutina �subrayar' y 'leer_numero'
====================================

OBJETIVO: Crear una subrutina que subraye el t�tulo del principio del programa y otra que obligue al usuario a introducir un n�mero.

AUTOR: Javier Latorre L�pez-Villalta -> jlalovi@gmail.com

FECHA: 11-nov-2014

*/

var

	prueba : numerico    // Variable para probar la subrutina 'leer_numero()'

inicio

	cls()

	subrayar ("ESTE PROGRAMA CONTIENE UNA SUBRUTINA QUE SUBRAYA ESTE T�TULO")

	leer_numero(prueba)

	imprimir("El n�mero introducido es: ", prueba)


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

