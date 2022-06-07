## Distribucion de Poisson.
from random import random 
import math

U = random()
print('Valor de U: ',U)

lamda = 20;
p = math.exp(-lamda)
print('Valor de p: ',p)
F = p
conj = []
i = 0
while U > F:
  p = (lamda*p)/(i+1)
  F = F + p
  conj.append(F)
  i = i + 1
  print('Valor la iteracion: ',i,' es ',F)

print('Valor de F:', F)
X = i
print('Valor de X: ',X)


#print(pearson(conj))

def pearson(conjunto):
  n = len(conjunto)




