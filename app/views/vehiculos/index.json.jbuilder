json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :patente, :modelo, :fabrica, :color, :cinlidrada, :caja, :cliente_id
  json.url vehiculo_url(vehiculo, format: :json)
end
