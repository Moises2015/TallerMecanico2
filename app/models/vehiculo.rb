class Vehiculo < ActiveRecord::Base
  belongs_to :cliente
  has_many :cliente_vehiculos
  has_many :cliente, :through => :cliente_vehiculos

end
