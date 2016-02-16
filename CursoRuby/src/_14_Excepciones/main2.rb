def funcionInversa numero
  raise ArgumentError,"solo admitimos numeros" unless numero.is_a? Numeric
  raise Exception,"no admito ceros" if numero == 0
  1.0/numero
end

begin
  puts funcionInversa 5
  puts funcionInversa 0
  puts funcionInversa "felix"
rescue ArgumentError => ae #entrara por el primer rescue que pueda, en este caso solo entraran las excepciones de la clase ArgumentError
  puts "Ha ocurrido un error de argumentos"
  puts ae.message
rescue Exception => e #con => e le asignamos a estas excepciones el tipo e (e es una variable que almacena un objeto de la clase Exception, todas las clases de excepciones heredan de Exception)
  puts "Ha ocurrido un error al introducir el dato"
  puts e.message
ensure
  puts "Este codigo se ejecutara siempre, independientemente de que ocurra alguna excepcion"
end

puts "Fin del programa"
