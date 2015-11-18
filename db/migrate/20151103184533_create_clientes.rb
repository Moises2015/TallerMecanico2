class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rut
      t.string :direccion
      t.string :fono
      t.string :correo
      t.string :giro
      t.string :formapago

      t.timestamps
    end
  end
end
