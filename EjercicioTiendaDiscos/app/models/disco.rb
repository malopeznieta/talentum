class Disco < ActiveRecord::Base
  # El campo nombre debe ser unico
  validates_uniqueness_of :nombre
  # El campo anio debe ser mayor que 1000
  validates_numericality_of :anio, greater_than: 1000
  # Todos los campos son obligatorios
  validates_presence_of :anio,:nombre,:artista
end
