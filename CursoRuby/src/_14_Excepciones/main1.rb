#las excepciones son errores que ocurren en tiempo de ejecucion, y que pueden detener el programa

def lanzarExcepcion
  puts "Antes de lanzar la excepcion"
  #lanzamos un error
  raise "Ha ocurrido un error inesperado"
  puts "Despues de lanzar una excepcion"
end 

lanzarExcepcion
puts "despues de llamar a lanzarExcepcion"
