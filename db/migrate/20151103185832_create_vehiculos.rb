class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :patente
      t.string :modelo
      t.string :fabrica
      t.string :color
      t.string :cinlidrada
      t.string :caja
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
