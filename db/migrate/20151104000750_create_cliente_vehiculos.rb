class CreateClienteVehiculos < ActiveRecord::Migration
  def change
    create_table :cliente_vehiculos do |t|
      t.references :cliente, index: true
      t.references :vehiculo, index: true

      t.timestamps
    end
  end
end
