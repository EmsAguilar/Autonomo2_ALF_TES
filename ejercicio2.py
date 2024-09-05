# Definimos las variables
IVA = 0.15
producto = input("Ingrese nombre de producto: ")
valor_prod = float(input("Ingrese valor de producto: $"))
cant = int(input("Ingrese la cantidad: "))

# Calculamos el IVA final y el total
iva_final = (valor_prod * cant) * IVA
total = valor_prod * cant + iva_final

# Imprimimos el resultado
print("Su valor final a pagar por la cantidad de " + str(cant) +
      " unidades de " + producto + f" incluido el IVA es: ${total:.2f}")
