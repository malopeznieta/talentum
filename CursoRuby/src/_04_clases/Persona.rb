class Persona
  
  #damos permiso de acceso creando getter y setter por defecto
  attr_accessor :nombre,:sexo,:edad
  
  #Esto es un simbolo :nombre, mas eficiente que una cadena
  
  #Con esto damos permisos de solo lectura
  attr_reader :dni
  
  #tambien tenemos permiso solo de escritura
  #attr_writer
  
  #Genero una variable de clase
  @@numero_de_personas = 0
  
  #Defino un metodo de clase para poder acceder al valor de la variable de clase
  def self.get_numero_de_personas
    @@numero_de_personas
  end
  
#constructor
  
  def initialize(dni,nombre,sexo,edad)
    @dni = dni
    @nombre = nombre
    @sexo = sexo
    @edad = edad
    @colorOjos = nil
    @@numero_de_personas = @@numero_de_personas + 1
  end
  
  #sin setter y getter no hay permisos para escribir y leer atributos
  #nos da control sobre los valores que se pueden introducir
  
  def setColorOjos colorOjos
    @colorOjos = colorOjos
  end
  
  def getColorOjos
    @colorOjos
  end
  
  #en los metodos de ruby se pueden utilizar caracteres de operaciones, pero no admiten espacios entre ellos
  def colorOjos= colorOjos
    @colorOjos = colorOjos
  end
  
  def colorOjos
    @colorOjos
  end
  
  def saludar
    puts "Hola a todos, soy una persona y me llamo #{@nombre}"
  end
  
  def to_s
    "#{@dni},#{@nombre},#{@edad},#{@sexo},#{@colorOjos}"
  end
  
end

#este tipo de estructura es llamada ruby beans

