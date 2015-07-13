/*

Ejercicio 1
===========

OBJETIVO: Dividir dos numeros introducidos por el usuario.

OBSERVACIONES: El programa contempla la posibilidad de que el dividendo sea '0', mostrando error.
					También estoy probando la función 'val()' para solventar el error al introducir un carácter no numérico.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	n1, n2, suma: numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA DIVIDIR DOS NUMEROS DADOS:")

	imprimir ("\n\nNúmero 1")
	n1 = leer_numero()
	imprimir ("\nNúmero 2")
	n2 = leer_numero()

	suma = n1/n2

	imprimir ("\nLa división de ", n1, " entre ", n2, " es ", suma)

fin

// Subrutina para leer número y obligar al usuario a introducir un número si éste introduce un carácter.

subrutina leer_numero () retorna numerico

var

	numero: numerico
	respuesta: cadena

inicio

	repetir
		leer(respuesta)
		si ( (respuesta <> "0") and (val(respuesta)==0)) {          // Carácter introducido diferente a "0" AND val() = 0. Recordar que función val() de un carácter NO numérico es 0,
			imprimir ("\nPor favor, introduce un valor numerico: ")  // incluyendo el 0, de ahí que se tienen que cumplir ambas condiciones.
		}
	hasta ((respuesta == "0") or (val(respuesta)<>0))              // Se saldrá del bucle cuando SÓLO se de la condición de que el caracter es '0' OR val(respuesta) sea diferente a 0,
	numero = val(respuesta)													   // ya que val(respuesta)=0 en este caso se da cuando respuesta es un carácter NO dígito (salvo el 0 de la otra condición)
	
	retorna (numero)

fin
