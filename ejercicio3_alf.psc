Algoritmo ahorro_programado
	Definir sueldo, META,ahorro como Real;
	Definir opc_ahorro como Entero;
	Escribir "Ingrese el valor de su remuneración mensual o sueldo: $";
	Leer sueldo;
	Escribir "Ingrese el monto que desea ahorrar";
	Leer META;
	Escribir "Seleccione la opcion de ahorro programado: 1.- 5%, 2.- 15%, 3.-30% ";
	Leer opc_ahorro;
	Segun opc_ahorro Hacer
		1:
			ahorro_mensual = sueldo * 0.05;
			ahorro_anual = ahorro_mensual * 12;
			gastos_mensuales = sueldo - ahorro_mensual;
			porcentaje_gastos = (gastos_mensuales / sueldo) * 100;
		2:
			ahorro_mensual = sueldo * 0.15;
			ahorro_anual = ahorro_mensual * 12;
			gastos_mensuales = sueldo - ahorro_mensual;
			porcentaje_gastos = (gastos_mensuales / sueldo) * 100;	secuencia_de_acciones_2
		3:
			ahorro_mensual = sueldo * 0.30;
			ahorro_anual = ahorro_mensual * 12;
			gastos_mensuales = sueldo - ahorro_mensual;
			porcentaje_gastos = (gastos_mensuales / sueldo) * 100;	secuencia_de_acciones_3
		
	Fin Segun
	Escribir "Ahorro mensual: $", ahorro_mensual;
    Escribir "Ahorro anual: $", ahorro_anual;
	Escribir "Porcentaje de gastos: ", porcentaje_gastos, "%";
	Si ahorro_anual >= META Entonces
        Escribir "Felicitaciones! Alcanzarás tu meta de ahorro anual.";
    SiNo
        Escribir "Necesitas ajustar tu ahorro para alcanzar tu meta.";
    FinSi

FinAlgoritmo
