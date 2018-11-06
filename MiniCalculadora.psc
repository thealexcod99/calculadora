SubProceso op <- CapturarOpcion()
	
	Definir op Como Entero
	Escribir "Pulsa 1(suma)"
	Escribir "Pulsa 2(resta)"
	Escribir "Pulsa 3(multiplicación)"
	Escribir "Pulsa 4(división)"
	leer op
	
FinSubProceso

Subproceso ret <- Suma ( a,b )
	
	ret <- a + b
	
Fin Subproceso

Subproceso ret <- Resta ( a,b )
	
	ret <- a - b
	
Fin Subproceso

Subproceso ret <- Multiplicacion ( a,b )
	
	ret <- a * b
	
Fin Subproceso

Subproceso ret <- Division ( a,b )
	
	ret <- a / b
	
Fin Subproceso


Algoritmo Minicalculadora
	
	Definir a, b, res Como Entero
	Definir op Como Entero
	
	op <- CapturarOpcion()
	
	si op>=1 y op<=4 Entonces
		
		Escribir "Dame a"
		Leer a
		Escribir "Dame b"
		Leer b
		
		Si op=1 Entonces
			
			res <-Suma(a,b)
			Escribir "La suma de ", a, " y ", b, " es ", res
			
		SiNo
			Si op=2 Entonces
				
				res <-Resta(a,b)
				Escribir "La resta de ", a, " y ", b, " es ", res
				
			SiNo
				Si op=3 Entonces
					
					res <-Multiplicacion(a,b)
					Escribir "La multiplicación de ", a, " y ", b, " es ", res
					
				SiNo
					Si op=4 Entonces
						
						res <-Division(a,b)
						Escribir "La división de ", a, " y ", b, " es ", res
						
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	SiNo
		
		Escribir "Operación no válida"
		
	Fin Si
FinAlgoritmo
