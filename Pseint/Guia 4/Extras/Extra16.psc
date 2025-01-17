////16. Una empresa de venta de productos por correo desea realizar una estad�stica de las
////ventas realizadas de cada uno de sus productos a lo largo de una semana. Distribuya
////luego 5 productos en los 5 d�as h�biles de la semana. Se desea conocer:
////	a. Total de ventas por cada d�a de la semana.
////	b. Total de ventas de cada producto a lo largo de la semana.
////	c. El producto m�s vendido en cada semana.
////	d. El nombre, el d�a de la semana y la cantidad del producto m�s vendido.
////El informe final tendr� un formato como el que se muestra a continuaci�n: 
/// ver guia

Funcion prod= masVendido(max)
	Definir prod como cadena
	segun max 
		1:
			prod= "P1"
		2:
			prod= "P2"
		3:
			prod= "P3"
		4:
			prod= "P4"
		5:
			prod= "P5"
	FinSegun
FinFuncion

Algoritmo Extra16
	Definir i,j,prod,total,max,semanal, sLunes, sMartes, sMiercoles, sJueves, sViernes,aux,max1,max2,max3,max4,max5 Como Entero
	Definir aux1,aux2,aux3,aux4,aux5, t1,t2,t3,t4,t5 Como Entero
	Definir tabla, cprod, casilla Como cadena
	
	Dimension tabla[8,7]
	
	para i=0 Hasta 7 Hacer
		para j=0 Hasta 6 Hacer
			tabla[0,0]="                 "
			si i=0 Entonces
				tabla[0,1]="lunes"
				tabla[0,2]="martes"
				tabla[0,3]="mier"
				tabla[0,4]="jueve"
				tabla[0,5]="vierne"
				
			finsi
			si j=0 Entonces
				tabla[1,0]="producto 1       "
				tabla[2,0]="producto 2       "
				tabla[3,0]="producto 3       "
				tabla[4,0]="producto 4       "
				tabla[5,0]="producto 5       "
				tabla[6,0]="total semana     "
				
			finsi
			si i<=6 Y j<=5 Entonces
				prod=azar(20)
				cprod=ConvertirATexto(prod)
				tabla[i,j]=cprod
			SiNo
				tabla[7,0]="prod mas vendido "
				tabla[0,6]="total prod"
				tabla[i,j]="       " //7 espacio
			FinSi
		FinPara
	FinPara
	
	sLunes=0
	sMartes=0
	sMiercoles=0
	sJueves=0
	sViernes=0
	t1=0
	t2=0
	t3=0
	t4=0
	t5=0
	max1=0
	max2=0
	max3=0
	max4=0
	max5=0
	aux1=0
	aux2=0
	aux3=0
	aux4=0
	aux4=0
	para i=0 Hasta 7 Hacer
		para j=0 hasta 6 Hacer
			///llenado de fila "Total semana"
			si j=1 y i<=5 Y i>=1 Entonces 
				sLunes=ConvertirANumero(tabla[i,1])+sLunes
				tabla[6,1]=convertiratexto(sLunes)
			FinSi
			si j=2 y i<=5 Y i>=1 Entonces 
				sMartes=ConvertirANumero(tabla[i,2])+sMartes
				tabla[6,2]=convertiratexto(	sMartes)
			FinSi
			si j=3 y i<=5 Y i>=1 Entonces 
				sMiercoles=ConvertirANumero(tabla[i,3])+sMiercoles
				tabla[6,3]=convertiratexto(sMiercoles)
			FinSi
			si j=4 y i<=5 Y i>=1 Entonces
				sJueves=ConvertirANumero(tabla[i,4])+sJueves
				tabla[6,4]=convertiratexto(sJueves)
			FinSi
			si j=5 y i<=5 Y i>=1 Entonces
				sViernes=ConvertirANumero(tabla[i,5])+sViernes
				tabla[6,5]=convertiratexto(sViernes)
			FinSi
			///llenado de columna "Total producto"
			si i=1 y j>=1 Y j<=5 Entonces //producto1
				t1=ConvertirANumero(tabla[1,j])+t1
				tabla[1,6]=convertiratexto(t1)
			FinSi
			si i=2 y j>=1 Y j<=5 Entonces //producto2
				t2=ConvertirANumero(tabla[2,j])+t2
				tabla[2,6]=convertiratexto(t2)
			FinSi
			si i=3 y j>=1 Y j<=5 Entonces //producto3
				t3=ConvertirANumero(tabla[3,j])+t3
				tabla[3,6]=convertiratexto(t3)
			FinSi
			si i=4 y j>=1 Y j<=5 Entonces //producto4
				t4=ConvertirANumero(tabla[4,j])+t4
				tabla[4,6]=convertiratexto(t4)
			FinSi
			si i=5 y j>=1 Y j<=5 Entonces //producto5
				t5=ConvertirANumero(tabla[5,j])+t5
				tabla[5,6]=convertiratexto(t5)
			FinSi
			///producto mas vendido
			si j=1 y (i>=1 Y i<=5) Entonces //lunes
				si ConvertirANumero(tabla[i,j])>=max1 Entonces
					max1=ConvertirANumero(tabla[i,j])
					aux1=i
				FinSi
				tabla[7,1]=masVendido(aux1)
			FinSi
			si j=2 y (i>=1 Y i<=5) Entonces
				si ConvertirANumero(tabla[i,j])>=max2 Entonces
					max2=ConvertirANumero(tabla[i,j])
					aux2=i
				FinSi
				tabla[7,2]=masVendido(aux2)
			FinSi
			si j=3 y (i>=1 Y i<=5) Entonces
				si ConvertirANumero(tabla[i,j])>=max3 Entonces
					max3=ConvertirANumero(tabla[i,j])
					aux3=i
				FinSi
				tabla[7,3]=masVendido(aux3)
			FinSi
			si j=4 y (i>=1 Y i<=5) Entonces
				si ConvertirANumero(tabla[i,j])>=max4 Entonces
					max4=ConvertirANumero(tabla[i,j])
					aux4=i
				FinSi
				tabla[7,4]=masVendido(aux4)
			FinSi
			si j=5 y (i>=1 Y i<=5) Entonces
				si ConvertirANumero(tabla[i,j])>=max5 Entonces
					max5=ConvertirANumero(tabla[i,j])
					aux5=i
				FinSi
				tabla[7,5]=masVendido(aux5)
			FinSi
			finpara
	FinPara
	
	Para i=0 hasta 7 Hacer 
		para j=0 Hasta 6 Hacer
			cprod = tabla[i,j]
			Si Longitud(cprod)=2 Entonces //condicional para central la tabla por consola
				cprod=Concatenar("    ",cprod) 
				cprod=Concatenar(cprod,"    ")
			SiNo
				si Longitud(cprod)=1 Entonces
					cprod=Concatenar("     ",cprod) 
					cprod=Concatenar(cprod,"    ")
				SiNo
					cprod=Concatenar("  ",cprod) 
					cprod=Concatenar(cprod,"   ")
				FinSi
			FinSi
			tabla[i,j] = cprod
			Escribir Sin Saltar "|", tabla[i,j],"|"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo

