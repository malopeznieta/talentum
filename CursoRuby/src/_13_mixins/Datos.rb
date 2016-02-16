#Mediante la palabre include se hace el mixin de los metodos del modulo (carga de libreria)
class Datos
  include Imprimible
  attr_reader :valor1,:valor2
  
  def initialize (valor1,valor2)
    @valor1,@valor2=valor1,valor2
  end
end