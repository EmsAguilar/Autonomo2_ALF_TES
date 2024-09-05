def calcular_ahorro():
    """Calcula el ahorro mensual, anual y gastos basados en un porcentaje de ahorro seleccionado."""

    sueldo = float(input("Ingrese el valor de su remuneración mensual o sueldo: $"))
    meta = float(input("Ingrese el monto que desea ahorrar al año: $"))

    while True:
        try:
            opc_ahorro = int(input("Seleccione la opción de ahorro mensual: 1.- 5%, 2.- 15%, 3.- 30%, 4.- 50%: "))
            if 1 <= opc_ahorro <= 4:
                break  # Sale del bucle si la opción es válida
            else:
                print("Opción inválida. Por favor, seleccione una opción entre 1 y 4.")
        except ValueError:
            print("Entrada inválida. Por favor, ingrese un número entero.")

    porcentaje_ahorro = {1: 5, 2: 15, 3: 30, 4: 50}[opc_ahorro]

    ahorro_mensual = sueldo * (porcentaje_ahorro / 100)
    ahorro_anual = ahorro_mensual * 12
    gastos_mensuales = sueldo - ahorro_mensual
    porcentaje_gastos = (gastos_mensuales / sueldo) * 100

    print("Ahorro mensual: $", format(ahorro_mensual, '.2f'))
    print("Ahorro anual: $", format(ahorro_anual, '.2f'))
    print("Gastos mensuales: $", format(gastos_mensuales, '.2f'))
    print(f"Porcentaje de gastos: {porcentaje_gastos:.2f}%")

    if ahorro_anual >= meta and porcentaje_gastos < 60:
        print("¡Excelente trabajo! Has alcanzado tu meta y tienes un buen control de tus gastos.")
    elif ahorro_anual < meta and porcentaje_gastos > 85:
        print("Necesitas ajustar tus gastos o tu porcentaje de ahorro para alcanzar tu meta.")
    else:
        print("Puedes mejorar tu plan de ahorro.")
calcular_ahorro()
