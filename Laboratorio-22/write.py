lineas = ["linea uno", "linea dos", "linea tres", "linea cuatro"]

with open("Hola.txt", "w") as archivo:
  for linea in lineas:
    archivo.write(linea + '\n')