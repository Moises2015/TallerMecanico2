json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :rut, :direccion, :fono, :correo, :giro, :formapago
  json.url cliente_url(cliente, format: :json)
end
