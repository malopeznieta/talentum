#Los bloques NO son objetos y por tanto no pueden ser manipulados, no tienen metodos asociados
#los procedimientos si son objetos
#el objetivo principal es evitar repetir bloques

proc=Proc.new {
  |v|
  puts "esto es un procedimiento con la variable #{v}" 
}

#esto lo interpretaria como un hash y daria error
#proc={  |v|  puts "esto es un procedimiento con la variable #{v}"}

#para llamar al bloque se usa .call
proc.call 3
proc.call
proc.call 3,4

3.times { puts "Hola" }
3.times(&proc)
