/*

Ejercicio 11
============

OBJETIVO: Programa que introducido un numero en base binaria,lo muestra en decimal.

OBSERVACION: - He establecido un m�ximo de 128 bits, que supongo que es m�s que razonable. Adem�s obligo al usuario que establezca primero el tope, 
					entre 1 bit y los 128.
				 - Tambi�n fuerzo al usuario a introducir uno a uno cada bit para almacenarlos en un vector, y los valores tienen que ser 0 o 1.
				 - Podr�a haber reutilizado el programa para almacenar los d�gitos de una cifra inversamente en un vecto, pero no lo he hecho para controlar
               que cada bit introducido sea 0 o 1 y para que el tama�o del vector sea mucho mayor.
				 - Un ejemplo de pasar un binario a decimal: 101011 = 1* 2^5 + 0* 2^4 + 1* 2^3 + 0* 2^2 + 1* 2^1 + 1*2^0 = 43

ACTUALIZACI�N: - Me he dado cuenta de que el ejercicio ped�a pasar de decimal a binario y en su d�a hice lo contrario (de binario a decimal). Puesto que
					  no quiero deshechar todo el trabajo ya hecho, a�adir� en el algoritmo la opci�n de que el usuario elija qu� desea hacer: pasar un n�mero
					  binario a decimal o viceversa. Para ello intentar� reutilizar variables de las que tengo ya asignadas para el "binario-deimal".
					- Siendo coherente con el n�mero de bits que permito en el vector bit[16], obligar� al usuario a introducir un valor decimal entre 0 y 65535.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 30-oct-2014 // 04-nov-2014 (editado)

*/

var

	opcion  : numerico                  // Esta variable almacenar� un valor de 1 o 2: Pasar de Binario a Decimal o pasar de Decimal a Binario.
	bit     : vector [16] numerico      // Vector para almacenar el valor de los bits por el usuario (opci�n 1) o los almacenados inversamente (opci�n 2).
	i       : numerico                  // Variables de control para las iteraciones. 
	e		  : numerico						// Variable que act�a como exponente de la f�rmula para pasar a decimal en opci�n 1.
   decimal : numerico                  // Resultado del binario introducido en decimal (opci�n 1) o decimal introducido por el usuario (opci�n 2).
	resto   : numerico                  // Esta variable la utilizar� en la opci�n 2 para realizar las operaciones pertinentes para averiguar el binario.
	tope    : numerico                  // Variable donde almacenar� el dato introducido por el usuario entre 0 y 1111 1111 1111 1111 (16 bits) (opci�n 1).
													// o varaible que utilizar� como contador para conocer el tama�o del vector bit[] (opci�n 2).	

inicio

	cls()

	imprimir ("PROGRAMA PARA PASAR DE BINARIO A DECIMAL O VICEVERSA")

	imprimir("\n\n�Qu� desea hacer?",
				"\n1. Pasar de Binario a Decimal.",
				"\n2. Pasar de Decimal a Binario.",
				"\n")
	repetir
		leer(opcion)
		si (opcion<>1 and opcion<>2) {
			imprimir("\nIntroduce el n�mero de la operaci�n que deseas realizar (1 o 2) ")
		}
	hasta (opcion==1 or opcion==2)

// 1. PASAR DE DECIMAL A BINARIO:
	si (opcion==1) {
		cls()
		imprimir("\n\n�Cu�ntos bits deseas introducir entre 1 y 16? ")
		repetir
			leer(tope)
			si (tope<1 or tope>16) {
				imprimir("\nIntroduce un n�mero de bits entre el 1 y el 16: ")
			}
		hasta (tope>=1 and tope<=16)
	
		desde i=1 hasta tope {
			imprimir("\nIntroduce el bit ", i, ": ")
			repetir
				leer(bit[i])
				si (bit[i]<>0 and bit[i]<> 1) {
					imprimir("\nUn bit s�lo puede ser 0 o 1. Por favor, introduce de nuevo el valor del bit ", i, ": ")
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
		imprimir("\n\n�Qu� n�mero decimal entre 0 y 65535 desea pasar a binario? ")
		repetir
			leer(decimal)
			si (decimal<0 or decimal>65535) {
				imprimir("\nIntroduce un n�mero decimal entre 0 y 65535: ")
			}
		hasta (decimal>=0 and decimal<=65535)

		tope = 0
		resto = decimal          // Quiero mantener el valor de la variable 'decimal' que ha introducido el usuario para no perderlo.
		mientras (resto>=2) {
			tope = tope + 1       // Aqu�, tope lo utilizo como contador, que almacenar� el tama�o final del vector una vez se salga de este bule 'repetir'.
			bit[tope] = resto%2
			resto = (resto - resto%2)/2
		}

		imprimir("\nLa base binaria del decimal ", decimal, " es")
		desde i=tope hasta 1 paso -1 {
			si (i==4 or i==8 or i==12 or i==16 or i==tope) {   // Peque�o detalle de presentaci�n para que los bits se impriman de 4 en 4 (desde la derecha).
				imprimir(" ", bit[i])
			sino
				imprimir(bit[i])
			}
		}
	}

fin