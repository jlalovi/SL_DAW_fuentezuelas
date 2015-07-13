/*

Ejercicio 1
===========

OBJETIVO: Dividir dos numeros introducidos por el usuario.

OBSERVACIONES: El programa contempla la posibilidad de que el dividendo sea '0', mostrando error.
					Tambi�n estoy probando la funci�n 'val()' para solventar el error al introducir un car�cter no num�rico.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	n1, n2, suma: numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA DIVIDIR DOS NUMEROS DADOS:")

	imprimir ("\n\nN�mero 1")
	n1 = leer_numero()
	imprimir ("\nN�mero 2")
	n2 = leer_numero()

	suma = n1/n2

	imprimir ("\nLa divisi�n de ", n1, " entre ", n2, " es ", suma)

fin

// Subrutina para leer n�mero y obligar al usuario a introducir un n�mero si �ste introduce un car�cter.

subrutina leer_numero () retorna numerico

var

	numero: numerico
	respuesta: cadena

inicio

	repetir
		leer(respuesta)
		si ( (respuesta <> "0") and (val(respuesta)==0)) {          // Car�cter introducido diferente a "0" AND val() = 0. Recordar que funci�n val() de un car�cter NO num�rico es 0,
			imprimir ("\nPor favor, introduce un valor numerico: ")  // incluyendo el 0, de ah� que se tienen que cumplir ambas condiciones.
		}
	hasta ((respuesta == "0") or (val(respuesta)<>0))              // Se saldr� del bucle cuando S�LO se de la condici�n de que el caracter es '0' OR val(respuesta) sea diferente a 0,
	numero = val(respuesta)													   // ya que val(respuesta)=0 en este caso se da cuando respuesta es un car�cter NO d�gito (salvo el 0 de la otra condici�n)
	
	retorna (numero)

fin
