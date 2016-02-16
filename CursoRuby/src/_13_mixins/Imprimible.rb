#libreria de metodos
#como ruby no permite la herencia multiple
#mediante mixin podemos incluir todos los modulos que queramos a una clase
#Emular herencia multiple
module Imprimible
  
  def imprimir_pantalla texto
    puts "Imprimimos por pantalla #{texto}"
  end
  
  def imprimir_fichero fichero,texto
    File.open(fichero,'w') {#w indica que el fichero debe abrirse en modo escritura
      |f|#f representa el fichero
        f.puts "-- #{texto}" 
    }
  end
end

