/*

Ejercicio 11
============

OBJETIVO: Programa que introducido un numero en base binaria,lo muestra en decimal.

OBSERVACION: - He establecido un máximo de 128 bits, que supongo que es más que razonable. Además obligo al usuario que establezca primero el tope, 
					entre 1 bit y los 128.
				 - También fuerzo al usuario a introducir uno a uno cada bit para almacenarlos en un vector, y los valores tienen que ser 0 o 1.
				 - Podría haber reutilizado el programa para almacenar los dígitos de una cifra inversamente en un vecto, pero no lo he hecho para controlar
               que cada bit introducido sea 0 o 1 y para que el tamaño del vector sea mucho mayor.
				 - Un ejemplo de pasar un binario a decimal: 101011 = 1* 2^5 + 0* 2^4 + 1* 2^3 + 0* 2^2 + 1* 2^1 + 1*2^0 = 43

ACTUALIZACIÓN: - Me he dado cuenta de que el ejercicio pedía pasar de decimal a binario y en su día hice lo contrario (de binario a decimal). Puesto que
					  no quiero deshechar todo el trabajo ya hecho, añadiré en el algoritmo la opción de que el usuario elija qué desea hacer: pasar un número
					  binario a decimal o viceversa. Para ello intentaré reutilizar variables de las que tengo ya asignadas para el "binario-deimal".
					- Siendo coherente con el número de bits que permito en el vector bit[16], obligaré al usuario a introducir un valor decimal entre 0 y 65535.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 30-oct-2014 // 04-nov-2014 (editado)

*/

var

	opcion  : numerico                  // Esta variable almacenará un valor de 1 o 2: Pasar de Binario a Decimal o pasar de Decimal a Binario.
	bit     : vector [16] numerico      // Vector para almacenar el valor de los bits por el usuario (opción 1) o los almacenados inversamente (opción 2).
	i       : numerico                  // Variables de control para las iteraciones. 
	e		  : numerico						// Variable que actúa como exponente de la fórmula para pasar a decimal en opción 1.
   decimal : numerico                  // Resultado del binario introducido en decimal (opción 1) o decimal introducido por el usuario (opción 2).
	resto   : numerico                  // Esta variable la utilizaré en la opción 2 para realizar las operaciones pertinentes para averiguar el binario.
	tope    : numerico                  // Variable donde almacenaré el dato introducido por el usuario entre 0 y 1111 1111 1111 1111 (16 bits) (opción 1).
													// o varaible que utilizaré como contador para conocer el tamaño del vector bit[] (opción 2).	

inicio

	cls()

	imprimir ("PROGRAMA PARA PASAR DE BINARIO A DECIMAL O VICEVERSA")

	imprimir("\n\n¿Qué desea hacer?",
				"\n1. Pasar de Binario a Decimal.",
				"\n2. Pasar de Decimal a Binario.",
				"\n")
	repetir
		leer(opcion)
		si (opcion<>1 and opcion<>2) {
			imprimir("\nIntroduce el número de la operación que deseas realizar (1 o 2) ")
		}
	hasta (opcion==1 or opcion==2)

// 1. PASAR DE DECIMAL A BINARIO:
	si (opcion==1) {
		cls()
		imprimir("\n\n¿Cuántos bits deseas introducir entre 1 y 16? ")
		repetir
			leer(tope)
			si (tope<1 or tope>16) {
				imprimir("\nIntroduce un número de bits entre el 1 y el 16: ")
			}
		hasta (tope>=1 and tope<=16)
	
		desde i=1 hasta tope {
			imprimir("\nIntroduce el bit ", i, ": ")
			repetir
				leer(bit[i])
				si (bit[i]<>0 and bit[i]<> 1) {
					imprimir("\nUn bit sólo puede ser 0 o 1. Por favor, introduce de nuevo el valor del bit ", i, ": ")
				}
			hasta (bit[i]==1 or bit[i]==0)
		}
		
		decimal = 0
		desde i=1 hasta tope {
			e=tope-i
			si (bit[i]==1) {
				decimal = decimal + 2^e
			}
		}
	
		imprimir("\nEl valor decimal del binario ")
		desde i=1 hasta tope {
			imprimir(bit[i])
		}
		imprimir(" es ", decimal)

// 2. PASAR DE BINARIO A DECIMAL:
	sino
		cls()
		imprimir("\n\n¿Qué número decimal entre 0 y 65535 desea pasar a binario? ")
		repetir
			leer(decimal)
			si (decimal<0 or decimal>65535) {
				imprimir("\nIntroduce un número decimal entre 0 y 65535: ")
			}
		hasta (decimal>=0 and decimal<=65535)

		tope = 0
		resto = decimal          // Quiero mantener el valor de la variable 'decimal' que ha introducido el usuario para no perderlo.
		mientras (resto>=2) {
			tope = tope + 1       // Aquí, tope lo utilizo como contador, que almacenará el tamaño final del vector una vez se salga de este bule 'repetir'.
			bit[tope] = resto%2
			resto = (resto - resto%2)/2
		}

		imprimir("\nLa base binaria del decimal ", decimal, " es")
		desde i=tope hasta 1 paso -1 {
			si (i==4 or i==8 or i==12 or i==16 or i==tope) {   // Pequeño detalle de presentación para que los bits se impriman de 4 en 4 (desde la derecha).
				imprimir(" ", bit[i])
			sino
				imprimir(bit[i])
			}
		}
	}

fin