class Cliente < ActiveRecord::Base
  has_many :cliente_vehiculos
  has_many :vehiculo, :through => :cliente_vehiculos
end
