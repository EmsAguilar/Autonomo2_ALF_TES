Algoritmo ahorro_programado
    Definir sueldo, META, ahorro_mensual, ahorro_anual, gastos_mensuales, porcentaje_gastos Como Real;
    Definir opc_ahorro Como Entero;
	
    Escribir "Ingrese el valor de su remuneración mensual o sueldo: $";
    Leer sueldo;
    Escribir "Ingrese el monto que desea ahorrar: $";
    Leer META;
	
    Escribir "Seleccione la opción de ahorro programado: 1.- 5%, 2.- 15%, 3.- 30%, 4.- 50%: ";
    Leer opc_ahorro;
	
    Segun opc_ahorro Hacer
        1: porcentaje_ahorro = 0.05;
        2: porcentaje_ahorro = 0.15;
        3: porcentaje_ahorro = 0.30;
	4: porcentaje_ahorro = 0.50;
    FinSegun
	
    ahorro_mensual = sueldo * porcentaje_ahorro;
    ahorro_anual = ahorro_mensual * 12;
    gastos_mensuales = sueldo - ahorro_mensual;
    porcentaje_gastos = (gastos_mensuales / sueldo) * 100;

    Si (ahorro_anual >= META) Y (porcentaje_gastos < 60) Entonces
        Escribir "¡Excelente trabajo! Has alcanzado tu meta y tienes un buen control de tus gastos.";
    SiNo
        Si (ahorro_anual < META) Y (porcentaje_gastos > 80) Entonces
            Escribir "Necesitas ajustar tus gastos o tu porcentaje de ahorro para alcanzar tu meta.";
        SiNo
            Escribir "Puedes mejorar tu plan de ahorro.";
        FinSi
    FinSi
	
    Escribir "Ahorro mensual: $", ahorro_mensual;
    Escribir "Ahorro anual: $", ahorro_anual;
    Escribir "Porcentaje de gastos: ", porcentaje_gastos, "%";
	
FinAlgoritmo
