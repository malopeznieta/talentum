class PizzaController < ApplicationController
  def pedido
    
    @direccion = params[:direccion]
    @telefono = params[:telefono]
    tamaño = params[:tamaño]
    arrayIngredientes = params[:ingredientes]
    
    negocio = NegocioPizza.new
    
    @pizza = Pizza.new
    @pizza.ingredientes=arrayIngredientes
    @pizza.tamaño=tamaño
    @pizza = negocio.calcularPrecio @pizza
     
      
  end
end
