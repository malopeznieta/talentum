module Libreria
  module Negocio
    class GestionLibreria
      #TODO Inicializo con el Dao para conseguir los métodos que hay en él
      def initialize(dao)
        @libroDao = dao
      end
      #TODO Doy de alta un libro utilizando el método 'create' del Dao
      def altaLibro(libro)
        @libroDao.create(libro)
      end
      #TODO Doy de baja un libro utilizando el método 'delete' del Dao
      def bajaLibro(titulo)
        @libroDao.delete(titulo)
      end
      #TODO Modifico un libro utilizando el método 'update' del Dao
      def modificarLibro(titulo, libroNuevo)
        @libroDao.update(titulo, libroNuevo)
      end
      #TODO Listo todos los libros almacenados utilizando el método 'read' del Dao
      def listarLibros
        @libroDao.read
      end
    end
  end
end