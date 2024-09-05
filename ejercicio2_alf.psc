Algoritmo Impuesto_IVA
	Definir IVA,valor_prod,total,iva_final como Real;
	Definir cant como Entero;
	Definir producto como Cadena;
	// se usa nombre de variable en mayus para indicar que representa un valor constante
	IVA = 0.15;
	Escribir "Ingrese nombre de producto: ";
	Leer producto;
	Escribir "Ingrese valor de producto: ";
	Leer valor_prod;
	Escribir "Ingrese la cantidad: ";
	Leer cant;
	iva_final= (valor_prod*cant)*IVA;
	total = (valor_prod*cant)+iva_final;
	Imprimir "Su valor final a pagar por la cantidad de ", cant, " unidades 		de ", producto, " incluido el IVA es: $", total;
FinAlgoritmo
