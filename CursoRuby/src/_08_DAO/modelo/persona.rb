class Persona
  attr_accessor :id,:nombre
  def initialize(nombre)
  @id
  @nombre=nombre
  end
  
  def to_s
    "#{@nombre} con ID #{@id}"
  end
  
end