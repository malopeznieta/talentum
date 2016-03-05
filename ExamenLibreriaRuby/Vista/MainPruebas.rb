#TODO Cargo todos los archivos de aplicación
load '../Modelo/Libro.rb'
load '../Dao/LibroDAO.rb'
load '../Negocio/GestionLibreria.rb'

#TODO Creo los cuatro libros que voy a dar de alta
libro1 = Libreria::Modelo::Libro.new "La princesa de hielo", "Camilla Lackberg", "Primer libro de la saga sobre Erica y Patrick de esta autora sueca."
libro2 = Libreria::Modelo::Libro.new "El Hobbit", "J.R.R. Tolkien", "Precuela de \'El Señor de los Anillos\'."
libro3 = Libreria::Modelo::Libro.new "Los pilares de la Tierra", "Ken Follet", "Si pasas de las primeras 100 páginas, te enamorará."
libro4 = Libreria::Modelo::Libro.new "El código Da Vinci", "Dan Brown", "Uno de sus grandes éxitos, gracias al personaje del profesor Robert Langdom."

#TODO Creo el negocio para poder gestionar los libros en la librería
negocio = Libreria::Negocio::GestionLibreria.new(Libreria::Dao::LibroMemoriaDao.new)

#TODO 1. Creación de los cuatro libros
negocio.altaLibro(libro1)
negocio.altaLibro(libro2)
negocio.altaLibro(libro3)
negocio.altaLibro(libro4)

#TODO 2. Listado de libros almacenados tras dar de alta los cuatro libros
puts "\t*** Lista de libros almacenados tras dar de alta los 4 libros ***"
puts negocio.listarLibros

#TODO 3. Dar de baja un libro de los almacenados
negocio.bajaLibro("El Hobbit")

#TODO 4. Listado de libros almacenados tras dar de baja un libro
puts "\n\t*** Lista de libros almacenados tras dar de baja un libro ***"
puts negocio.listarLibros

#TODO 5. Modificar un libro almacenado
libroNuevo = Libreria::Modelo::Libro.new "El código Da Vinci", "Dan Brown", "Se da a conocer a nivel mundial gracias al personaje del profesor Robert Langdom."
negocio.modificarLibro(libroNuevo.titulo, libroNuevo)

# TODO 6. Listado de libros almacenados tras modificar un libro
puts "\n\t*** Lista de libros almacenados tras modificar un libro ***\n\t\t\t(Título: #{libroNuevo.titulo})"
puts negocio.listarLibros



