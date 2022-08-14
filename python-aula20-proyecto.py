#Ejercicio numero 6
Historial2=(23500, 5960, 2300, 10200, 8900)
gastos_totales_Frida=sum(Historial2)

def gastosSuperiores(tupla):
    contador=0
    for i in tupla:
        if i > 5000:
            contador+=1
    print(f"Los gastos han superado los $5000 {contador} veces.")

print(f"Los gastos totales por atención a Frida son: ${gastos_totales_Frida}")


#ejercicio numero 7
Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
promedio =sum(Historial3) / len(Historial3)
print(f"el promedio de los gastos para Lennon es de: {promedio}")
if promedio > 4500:
	print(f"Se ha excedido del gasto promedio para su mascota")
