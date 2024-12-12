def calcular_promedio(lista):
  suma = 0
  for numero in(lista):
    suma = suma + numero
  promedio = suma /len(lista)
  return promedio

lista_numeros = [5, 10, 15, 20, 25]
resultado = calcular_promedio(lista_numeros)
print(f"El promedio de la lista{lista_numeros} es {resultado}")

# Ejercicio 2

diccionario_estudiantes = {
  "carlos": 7,
  "enrique": 8,
  "brayan": 9,
}

def agregar_estudiantes(diccionario, nombre, nota):
  diccionario[nombre] = nota
  return diccionario

def calcular_promedio_notas(diccionario):
  if len(diccionario) == 0:
    return 0
  suma_notas = 0
  for nota in diccionario.values():
    suma_notas += nota
  return suma_notas / len(diccionario)

diccionario_estudiantes = agregar_estudiantes(diccionario_estudiantes, "adreyssong", 5)

print(diccionario_estudiantes)
print(calcular_promedio_notas(diccionario_estudiantes))

lista = []

n=10
for i in range(n):
  lista.append(i+1)

print(lista)

