#los metodos se crean con la palabra reservada def

def metodo
  puts "Hola metodo"
end

metodo
metodo()

#Si damos a un metodo el mismo nombre "sobreescribimos"
def metodo
  puts "Hola metodo 2"
end

metodo

def saludar(nombre)
  puts "Hola #{nombre}!"
end

saludar "Sara"
saludar("Sara")
saludar 2
saludar true
#varios parametros se separan con comas

#valores de retorno
def devolverSaludo
  #return "Hola devolverSaludo", podemos poner return, pero por defecto se devuelve la ultima linea de ejecucion
  puts "traza devolver saludo -> entrando en el metodo"
  "Hola devolverSaludo"
end
valorRetorno=devolverSaludo
puts valorRetorno

#metodos siempre la primera letra en minuscula, clases en mayuscula

def sumar(valor1,valor2)
  valor1+valor2
end

puts sumar 55,127
puts "El resultado es: #{sumar 55,127}"
val1=34
val2=56

puts "El resultado es: #{sumar val1,val2}"

sumar=1582
puts "El resultado es: #{sumar val1,val2}"


#En ruby podemos dar valores por defecto a los parametros

# def sumar(valor1=0,valor2) tambien funciona
def sumar(valor1,valor2=0)
  valor1+valor2
end

puts sumar 55
puts sumar 55,127

def sumar (val1,val2=0,val3)
  puts "valor 1 es: #{val1}"
  puts "valor 2 es: #{val2}"
  puts "valor 3 es: #{val3}"
  val1+val2+val3
end

puts sumar 2,5
puts sumar 2,5,3

vE=1
def metodo
  #puts "La variable extrna es: #{vE}"
  #esta linea falla porque la variable ecterna no tiene alcance en el bloque del metodo, igualmente desde el bloque del metodo una variable no tiene alcance fuera
  vI="pepe"
end
metodo
#puts vI

#declarar numero variable de parametros de entrada

def metodo (*valores)
  puts valores
  puts "------"
  puts valores[0] #valores es siempre un array
end

metodo "hola","como estas","yo bien",3,true

def sumaCompleta(*sumandos)
  resultado = 0
  for sumando in sumandos
    resultado=resultado+sumando # resultado += valor
  end
  resultado
end

puts sumaCompleta 1,2,3,5,8,7,6
puts sumaCompleta 99,23
puts sumaCompleta




