class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.string :numeroficha
      t.string :falla
      t.string :diagnostico
      t.string :total
      t.references :vehiculo, index: true
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
