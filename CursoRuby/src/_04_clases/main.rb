load 'Persona.rb'
persona1 = Persona.new("12345678-A","Pepe","Hombre",23)
puts "El numero de personas creadas es #{Persona.get_numero_de_personas}"
persona2 = Persona.new("87654321-A","Manuel","Hombre",45)
puts "El numero de personas creadas es #{Persona.get_numero_de_personas}"


persona1.setColorOjos "Azules"
puts persona1.getColorOjos
#este acceso solo es posible con el attr_accessor
puts persona2.nombre
persona2.nombre="Manu"
puts persona2.nombre
persona1.colorOjos="Verdes"
puts persona1.colorOjos
puts persona1.dni
puts persona2.dni
puts persona1

persona1.saludar
persona2.saludar

#persona1 edad 23
#persona2 edad 45
persona2 = persona1
persona2.edad=44
#resultado final, edad de las 2 personas es 44
#hasta aqui hemos trabajado con los objetos (instancias)

puts "El numero de personas creadas es #{Persona.get_numero_de_personas}"
