class NegocioPizza
  
  @@ingredientesPrecioHash = {"Jamon" => 1,"Piña" => 1.5,"Anchoas" => 3 }
  @@tamañoPrecioHash = {"Pequeña" => 5,"Mediana" => 10,"Grande" => 15 }
  
  
  def getPrecioIngrediente ingrediente
    @@ingredientesPrecioHash[ingrediente]
  end
  
  def getPrecioTamaño tamaño
    @@tamañoPrecioHash[tamaño]
  end
  
  def calcularPrecio pizza
    precioAux = 0
    for ingrediente in pizza.ingredientes
      precioAux += getPrecioIngrediente ingrediente
    end
    precioAux += getPrecioTamaño pizza.tamaño
    pizza.precio = precioAux
    pizza
  end
  
end