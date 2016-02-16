#Un hash es una colcecion de datos que mantiene una estructura clave => valor
#son conocidos como arrays asociativos
#los arrays son indexados

#creamos un hash vacio
hash = {}
otroHash = Hash.new

#añadir elementos
hash["clave"] = "valor"
hash["otraClave"] = "3"

#buscar elementos
puts "el valor de la clave es: #{hash["clave"]}" #recuperamos el valor que almacenamos

#solo se admite una clave para un valor dado, si repitieramos una clave sobreescribimos el valor
hash["clave"] = "otro valor"
puts hash["clave"]

#podemos inicializar un hash con valores

nuevoHash = {"clave1" => "valor1", "clave2" => "valor2"}
puts nuevoHash
puts nuevoHash["clave2"]

#para poner las claves es recomendable el uso de simbolos :nombre_simbolo
hashSimbolos = {:clave1 => "valorSimbolo1"}
puts hashSimbolos[:clave1]
hashSimbolos[:clave2] = "valorSimbolo2"
hashSimbolos[:clave3] = "valorSimbolo3"
hashSimbolos[:clave4] = "valorSimbolo4"
hashSimbolos[:clave5] = "valorSimbolo5"
puts hashSimbolos

unless hashSimbolos[:clave7]
  puts "El valor 7 no existe"
end

unless hashSimbolos[:clave2]
  puts "El valor 2 no existe"
end

#Los simbolos son inmutables y unicos en todo el programa
#inmutable se define como un elemento al que, una vez se le han establecido sus astributos, estos no se pueden cambiar

variable1 = "valor1"
variable2 = "valor1"

if variable1 == variable2
  puts "tienen el mismo valor"
end

#.equal? compara posiciones de memoria
if variable1.equal? variable2
  puts "el mismo objeto"
else
  puts "diferente objeto"
end

#convertimos un string a simbolo
hash[variable1.to_sym]="valor1PasadoASimbolo"
puts hash[:valor1]

if variable1.to_sym.equal? variable2.to_sym
  puts "Los simbolos son iguales"
end

#to_sym, si tiene 2 valores iguales, apunta al mismo objeto, no crea 2 objetos diferentes con el mismo contenido


hashEquipos = {}
hashEquipos[:madrid] = ["C.Ronaldo","Casillas","Raul"]
hashEquipos[:rayo] = ["Trashorras","Amaya"]

for jugador in hashEquipos[:madrid]
  puts jugador
end

puts "-"*25
#podemos mostrar un array con todas las "keys" del hash
puts hashEquipos.keys
puts hashEquipos.keys.inspect
#podemos mostrar un array con todas las "keys" del hash
puts hashEquipos.values

puts "--- Equipos de la liga talentum ---"
for equipo in hashEquipos.keys
  puts "-equipo: #{equipo}"
    for jugador in hashEquipos[equipo]
      puts "--jugador: #{jugador}"
    end 
end






