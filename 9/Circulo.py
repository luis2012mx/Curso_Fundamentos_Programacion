import math

def inicio():
   print("Para calcular y desplegar la")
   print("superficie y la circunferencia")
   print("de varios circulos cualquiera")

def isNum(cad) :
   try:
      float (cad)
      return True
   except ValueError:
      #print ("Solo se aceptan numeros enteros Compa")
      return False

def datos():
   global r

   r = -1
   while (r < 0):
      aux=""
      while not isNum (aux):
         aux = input("Deme el valor del radio:")
      r = float (aux)

def calculos():
   global C, S

   C = 2 * math.pi * r
   S = math.pi * math.pow (r,2)

def resultados():
   print ("\nCuando el raido vale:", r)
   print("Superficie =" , S)
   print ("Circunferencia =", C)

def principal ():
   resp = "S"
   inicio()
   while (resp == "s" or resp == "S" ):
      datos()
      calculos()
      resultados()
      resp = input ("Calculamos otro circulo? s/n:")

principal()
