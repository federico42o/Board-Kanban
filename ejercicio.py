"""
1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

    28957346,  Juan,  Perez, 4789689,  Belgrano 101

  Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

"""



Dueno = [28957346,'Juan', 4789689, 'Belgrano 101' ]
dni = Dueno[0]

if dni > 26000000:
    print(f'Telefono del dueño: {Dueno[2]}')


