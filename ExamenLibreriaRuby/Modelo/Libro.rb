module Libreria
  module Modelo
    class Libro
      
      attr_accessor :titulo, :autor, :descripcion
      def initialize(titulo, autor, descripcion)
        
        @titulo = titulo
        @autor = autor
        @descripcion = descripcion
        
      end
      
      def to_s
        "\nTítulo: #{titulo}\nAutor: #{autor}\nDescripción: #{descripcion}"
      end
    end
  end
end