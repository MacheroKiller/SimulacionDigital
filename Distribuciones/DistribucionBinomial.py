## Distribución binomial

from random import random
import math

n = 100 #Numero de datos
p = 0.9 #Probabilidad de éxito
U = random()
print('Valor de U: ',U)

c = p/(1-p)
i = 0
pr = (1-p)**n
F = pr

while U > F:
  pr = (c*(n-i)/(i+1))*pr 
  F = F + pr
  i = i + 1
  
X = i
print('El valor de X es: ', X)


