class GestionPersonasLN
  
  def initialize (dao,log)
  
  @personasDao=dao #PersonasBBDDDAO.new mal
  @personasLog=log #logDAO.new mal
    
  end
    
  def guardarPersona(persona)
    @personasDao.insert persona
    @personasLog.generarLog "Persona #{persona} insertada"
  end
  def buscarPersona(idPersona)
    listaDePersonas=@personasDao.list
    #Recorro el array buscando el idPersona
    for persona in listaDePersonas
      if persona.id == idPersona
        @personasLog.generarLog "Busqueda de #{persona} encontrada"
        return persona
      end
    end
    @personasLog.generarLog "Persona con id #{idPersona} no encontrada"
    return nil
  end
  
  def borrarPersonas(arrayIdPersonas)
    #Recorro el array de personas
    for id in arrayIdPersonas
      #En cada iteracion eliminamos la persona con la id pasada en el array
      @personasDao.delete id
      @personasLog.generarLog "Persona con id #{id} eliminada"
    end
  end
  def actualizarPersona(persona)
    @personasDao.update persona
  end
end