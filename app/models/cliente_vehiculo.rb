class ClienteVehiculo < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vehiculo
end
