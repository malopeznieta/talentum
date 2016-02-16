# para comentarios
=begin
Esto es un comentario
de varias lineas  
=end

# variables
# no empiezan con ninguna palabra reservada, son arbitrarias pero deben empezar por "_" o por una letra
nombreVariable = 1
puts nombreVariable
nombreVariable = 2
puts nombreVariable

sVariable= "Variable de texto"
iVariable= 3
puts sVariable,iVariable

puts "El valor de la variable sVariable es: ".to_s+sVariable
puts "El valor de la variable iVariable es: "+iVariable.to_s
# .to_s para pasar a string, heredado de la clase objet (directamente no puede concatenar String y Fixnum)

puts "El valor de la variable sVariable es: #{sVariable}"
puts 'El valor de la variable sVariable es: #{sVariable}'
# solo comprueba #{variable} con "", si no hay que comprobarlo un texto se interpreta mas rapido con ''
puts "El valor de la variable iVariable es: #{iVariable}" 

variable = nil #al inicializar apunta a null
puts "El valor de la variable variable es: #{variable}"

#constantes, se declaran poniendo la primera letra en mayuscula
Constante="Patata"
#por convencion el nombre de las variables se suelen poner en camel case o snake case
estoEsUnaVariable="Camel case"
esto_es_una_variable="Snake case"
#por convencion las constantes se suelen escribir en mayusculas y snake case
VARIABLE_CONSTANTE="Patatar"

puts VARIABLE_CONSTANTE
puts "La constante es: #{VARIABLE_CONSTANTE}"

#Se pueden cambiar las constantes, pero da una alerta (warning)
VARIABLE_CONSTANTE="Patatilla"
puts VARIABLE_CONSTANTE

#pseudovariables, son variables predefinidas
puts __FILE__
puts __LINE__

#Acummulaciones
valor1=3
valor1=valor1+5
puts valor1
valor1 += 5
puts valor1
valor1 -= 3
puts valor1
valor1 *= 2
puts valor1
valor1 /= 2
puts valor1

#operaciones con string
valor1="pepe"
valor1+=" te saludo"
puts valor1

valor1=nil
valor1 ||= 8
puts valor1
valor1 ||= 12
puts valor1
#comprueba si tiene valor asignado (diferente de null) y si no tiene valor le asigna el valor indicado despues del caracter ||=

#En ruby podemos hacer asignaciones multiples
valor2 = valor3 = valor4 = 98
puts valor2,valor3,valor4

#hasta ahora, todas estas variables son localoes
#ruby tambien soporta variables globales, visibles desde cualquier parte de nuestro programa
#se declaran con $variable

$variableGlobal = 50
puts "El valor de la variable global es: #{$variableGlobal}"

#tipos basicos en ruby
tipoFixnum = 3
#tambien tenemos bignum (mayor rango de numeros posible, pero ruby lo hace automatico)
tipoString = "texto"
tipoFloat = 3.0
tipoTrue = true #Boolean
puts tipoFixnum.class
puts tipoString.class
puts tipoFloat.class
puts tipoTrue.class
tipoFalse = false
puts tipoFalse.class
tipoNil=nil
puts tipoNil.class

#Conversiones
puts "El numero " + 3.to_s
puts "3".to_i + 5
puts "3pepe".to_i + 10
puts "pepe3".to_i + 10 #si no puede realizar la conversion devuelve 0
puts 3.to_f

puts 2+3*5
puts (2+3)*5
puts "#{(2+3)*5}"
# puts 2/0 error div por cero
puts 2.0/0 #en numeros reales el resultado es infinito