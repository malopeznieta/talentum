load 'modelo/persona.rb'
load 'dao/logDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

puts "Inicializando..."
negocio=GestionPersonasLN.new(PersonasDAO.new,LogDAO.new)

negocio.guardarPersona(Persona.new "Pablo")
negocio.guardarPersona(Persona.new "Jose")
negocio.guardarPersona(Persona.new "Lucas")
negocio.guardarPersona(Persona.new "Raul")
negocio.guardarPersona(Persona.new "Adrian")

miArrayDeIds = [3,4]
negocio.borrarPersonas miArrayDeIds
persona=negocio.buscarPersona 1


puts "Fin del lanzador"
