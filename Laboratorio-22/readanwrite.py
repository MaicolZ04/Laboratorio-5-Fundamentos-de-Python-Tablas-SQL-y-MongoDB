with open("Hola.txt", "r") as archivo:
  contenido = archivo.read()

contenido += "\nTexto adicional agregado"

with open("Hola.txt", "w") as archivo:
  archivo.write(contenido)

try:
  with open("archivo_prueba.txt", "r") as archivo:
    contenido = archivo.read()
    print(contenido)

except FileNotFoundError:
  print("El archivo no existe...")

except IOError:
  print("Ocurrió un error al leer el archivo...")