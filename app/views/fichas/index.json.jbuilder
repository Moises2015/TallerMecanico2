json.array!(@fichas) do |ficha|
  json.extract! ficha, :id, :numeroficha, :falla, :diagnostico, :total, :vehiculo_id, :cliente_id
  json.url ficha_url(ficha, format: :json)
end
