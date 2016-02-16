class PersonasDAO
  
  @@almacenPersonas = []
  @@id=1
  def insert(persona)
    #Guardar personas en almacenPersonas
    #Generar ID unica para cada persona
    persona.id=@@id
    @@id+=1
    @@almacenPersonas << persona
  end
  
  def update(persona)
  #Obtengo la persona a actualizar
  idABuscar=persona.id
  #Busco el id en el array almacenPersonas
    i=0
    for personaActual in @@almacenPersonas
      if personaActual.id==idABuscar then
  #Sustituyo la persona vieja por la nueva  
        @@almacenPersonas[i]=persona
        return
      end
      i+=1
    end
  end
      
  def delete(idPersona)
  #Busco el id en el array almacenPersonas y obtengo la persona
  for personaActual in @@almacenPersonas
    if personaActual.id==idPersona then
      #Borro persona del array
      @@almacenPersonas.delete personaActual
      return
    end
  end
  end
  
  def list
  #Devolvemos el array
    @@almacenPersonas
  end
end