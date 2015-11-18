class Ficha < ActiveRecord::Base
  belongs_to :vehiculo
  belongs_to :cliente
end
