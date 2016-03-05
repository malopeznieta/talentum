module Libreria
  module Dao
    class LibroMemoriaDao
      #TODO Creo un almacén para los libros
      @@libreria = []
      
      def create(libro)
        #TODO Almaceno directamente el libro en el almacén
        @@libreria << libro
      end
      
      def read
        #TODO Muestro todos los libros almacenados
        @@libreria
      end
      
      def update(titulo, libroNuevo)
        #TODO Selecciono el libro que quiero actualizar mediante el título
        libroActualizar = @@libreria.select{|libro| libro.titulo == titulo}
        if libroActualizar.length > 0
          delete(titulo)
        end
        create(libroNuevo)
      end
      
      def delete(titulo)
        #TODO Busco el título que quiero borrar en el almacén y lo elimino
        for libroActual in @@libreria
          if titulo == libroActual.titulo
            @@libreria.delete(libroActual)
          end
        end
      end
      
    end
  end
end