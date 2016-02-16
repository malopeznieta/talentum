#Un bloque es una porcion de codigo encerrada entre {} o entre do..end
#El bloque solo puede aparecer despues de usar un metodo
#Dicho metodo deberia estar preparado para usar dicho bloque

3.times {
  puts "hola bloque"
}

3.times do
  puts "hola times"
end

#En los bloques tambien podemos poner variables, se escriben entre ||
#En el caso del metodo .times representara cada una de las iteraciones

3.times {
  |var|
    puts"Hola time, vamos por la iteracion #{var}"
}

array=["pepe","pepin","pepon"]
array.size.times {
  |var|
    puts "hola times, vamos por la iteracion #{var} y el valor es #{array[var]}"
}

#ejecutamos el bloque (3-2) +1 veces
2.upto 3 do
  |var|
  puts "hola upto indice #{var}"
  puts "hola array #{array[var]}"
end

puts "---------------"
#mas metodos que admiten bloques

array =[1,2,3,4,"pepe","manuel"]
array.each {
  |var|#contendra cada uno de los elementos del array
  puts "valor del array #{var}"
}

array.each_with_index {
  |valor,indice|
  puts "el valor del indice #{indice} es #{valor}"
}

load '../_04_clases/Persona.rb'
arrayPersonas=[Persona.new("33","felix","pocoymal",36),Persona.new("44","pepe","mucho",22)]
#devuelve el valor que coincida con la condicion
resultado = arrayPersonas.select {
  |persona|
  persona.nombre=="pepe"
}
puts resultado

puts "---------Borrar elemento con condicion---------"
arrayPersonas.delete_if{
  |persona|
  persona.nombre=="pepe"
}

puts arrayPersonas

#todos los metodos pueden recibir un bloque como argumento implicito, pudiendo invocar dicho bloque en cualquier momento de nuestro codigo
#usando la palabra reservada yield

puts '-------------'

def metodo
  puts "esto es un metodo de ejemplo"
  yield
end

metodo {
  puts "esto es un bloque de ejemplo"
}

def metodo
  puts "esto es otro metodo de ejemplo"
  variable="valor1"
  yield variable
end

metodo {
  |var|
  puts "esto es otro bloque de ejemplo con el parametro #{var}"
}

def metodo parametro
  puts "esto es otro metodo mas de ejemplo"
  yield parametro
end

metodo("Pepe") {
  |var|
  puts "esto es otro bloque de ejemplo con el parametro #{var}"
}

metodo("Sandia") {
  |var|
  puts "esto es otro bloque de ejemplo con el parametro #{var}"
}





