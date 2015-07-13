/*

Examen - Ejercicio 1
====================

OBJETIVO: Enunciado en el examen.

OBSERVACIONES:
	- En el ejercicio, a�ado dos subrutinas: subrayar() y leer_numero(numero). Ver final del programa para m�s detalles.

AUTOR: Javier Latorre L�pez-Villalta -> jlalovi@gmail.com

FECHA: 11-nov-2014

*/

var

			 estatura: numerico      // Estatura que introduce el usuario. Se trabajar� con ella y desaparecer� con la siguiente altura introducida.
	total_estaturas: numerico      // N�mero total de alturas introducidas por el usuario.
	 estatura_media: numerico      // Media de las alturas introducidas.
	     sumatorio : numerico      // Suma de alturas para conocer la 'estatura_media'
	estatura_minima: numerico		  // Altura m�s baja introducida.
	estatura_maxima: numerico		  // Altura m�s baja introducida.
			  n_bajos: numerico	     // N�mero de alturas entre (150 y 165)
		  n_normales: numerico		  // N�mero de alturas entre (166 y 185)
           n_altos: numerico		  // N�mero de alturas entre (>185)

inicio

	cls()

	subrayar ("ESTE PROGRAMA MUESTRA UNOS DATOS A PARTIR LAS ESTATURAS INTRODUCIDAS")    // Subrutina 'subrayar()'. Ver final del programa.

	// ASIGNACI�N Y PROCESAMIENTO DE LOS DATOS

	repetir
		imprimir("Introduce una estatura: ")
		leer_numero(estatura)  // Subrutina 'leer_numero(numero)'. Ver final del programa.
		si (estatura <> 0 and estatura<150 or estatura>200) {  // Si la altura es diferente a 0 y menor que 150 o mayor que 200, mando un mensaje de error.
			repetir
				imprimir("Por favor, introduce una estatura v�lida entre 150 y 200 (ambas inclusives): ")
				leer_numero(estatura)
			hasta (estatura>=150 and estatura <=200)
		}
		si (estatura <> 0) {                              // Si el dato es v�lido y distinto de 0:
			total_estaturas = total_estaturas + 1          // Una vez pasada la condici�n anterior, empiezo a trabajar con los datos v�lidos.
			sumatorio = estatura + sumatorio
			estatura_media = sumatorio / total_estaturas   // Estatura media a partir del sumatorio y el total de estaturas.
			si (total_estaturas == 1) {                    // La primera estatura introducida ser� la m�xima y la m�nima.
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
	hasta (estatura == 0)  // Condici�n para dejar de introducir estaturas

	// IMPRIMIMOS LOS DATOS PROCESADOS POR PANTALLA:
	
	imprimir("\n- El n�mero total de estaturas introducidas es: ", total_estaturas)
	imprimir("\n- La estatura media es: ", estatura_media)
	imprimir("\n- La estatura m�xima es: ", estatura_maxima)
	imprimir("\n- La estatura minima es: ", estatura_minima)
	imprimir("\n- El n�mero de bajos es: ", n_bajos)
	imprimir("\n- El n�mero de normales es: ", n_normales)
	imprimir("\n- El n�mero de altos es: ", n_altos)

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

