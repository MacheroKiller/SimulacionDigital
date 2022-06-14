# Librerías
import numpy as np 
import math as m 
import random as rnd 
import time
# Fin de Librerías

# La base del método es asumir X y Y como funciones normales estandar, y R y TH (theta mayúscula) las
# coordenadas polares del vector (X, Y)

# Se cambian a polares y se multiplican

# Del cambio con Jacobiano salen una expresión que se puede reinterpretrar como una multiplicación de 
# una uniforme y una exponencial

Inicio = time.time() # Prueba de tiempo 1 Inicio

N = 100

# ----------------------------------------------------------------------------------------
# ----------------------------Generados por el Método Box-Muller--------------------------
# ----------------------------------------------------------------------------------------

# Lo primero, generar los dos U entre 0 y 1.

Z1 = []
Z2 = []

for i in range(N):
    U1 = rnd.random()
    U2 = rnd.random()
    # Calcular R y Theta
    R = m.sqrt(-2*m.log(U1))
    Th = 2 * m.pi * U2
    # Calcular x y Y
    X = R * m.cos(Th)
    Y = R * m.sin(Th)
    Z1.append(X)
    Z2.append(Y)

#print(str(N) + " valores de la primera normal estandar")
#print(Z1)

# Impresión de la primera normal estandar y luego de la segunda
#cleinput("Presione enter para seguir")
#print(str(N) + " valores de la segunda normal estandar")
#print(Z2)

Fin = time.time() # Prueba de tiempo 1 Fin

print(str(Fin-Inicio)+" Prueba de tiempo Box-Muller")

# ----------------------------------------------------------------------------------------
# ----------------------------Generados por el Método Polar-------------------------------
# ----------------------------------------------------------------------------------------

Inicio = time.time() # Prueba de tiempo 2 Inicio

#print("Generadas por el método polar")
#input("Presione enter para seguir")

Z3 = []
Z4 = []

count = 0

for i in range(N):
    aceptado = False
    while aceptado == False:
        V1, V2 = 2 * rnd.random() - 1, 2 * rnd.random() - 1
        S = V1**2 + V2**2
        count +=1
        if ( S < 1):
            X = m.sqrt((-2 * m.log(S))/S)*V1
            Y = m.sqrt((-2 * m.log(S))/S)*V2
            Z3.append(X)
            Z4.append(Y)
            #print(str(X) + "," + str(Y))
            aceptado = True

#print(str(N) + " valores de la primera normal estandar")
#print(Z3)

# Impresión de la primera normal estandar y luego de la segunda

#input("Presione enter para seguir")
#print(str(N) + " valores de la segunda normal estandar")
#print(Z4)
#print("Se generaron {} parejas de V1, V2".format(count))

Fin = time.time() # Prueba de tiempo 2 Fin

print(str(Fin-Inicio)+" Prueba de tiempo Método Polar")


# ----------------------------------------------------------------------------------------
# -------------------Método de Rechazo con la Exponencial 5.2 del libro-------------------
# ----------------------------------------------------------------------------------------

inicio = time.time()

def g(x):
    return m.e**(-x)

def f(x):
    return (2/m.sqrt(2*m.pi))*(m.e**(-x/2))

c = m.sqrt((2*m.e)/(m.pi))

n = 100

normal = []
exponencial = []

for i in range(n):
    aceptacion = False
    while (aceptacion == False):
        y = -1 * m.log(rnd.random())
      #print("Valor generado para la g(x) (Exponencial lambda 1): " +str(y))
        U = rnd.random()
        division = (f(y))/(c*(g(y)))
        #print("Valor de f(x)/cg(x): " +str(division))
        if U <= division:
            x = y
            aceptacion = True
            #print(x)

fin = time.time()

print(str(fin-inicio)+" Prueba de tiempo Método Rechazo")