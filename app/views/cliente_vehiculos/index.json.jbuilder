json.array!(@cliente_vehiculos) do |cliente_vehiculo|
  json.extract! cliente_vehiculo, :id, :cliente_id, :vehiculo_id
  json.url cliente_vehiculo_url(cliente_vehiculo, format: :json)
end
