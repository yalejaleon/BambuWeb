json.extract! tb_cliente, :id, :cedula, :nombre, :apellido, :correo, :codigo_ciudad, :telefono, :created_at, :updated_at
json.url tb_cliente_url(tb_cliente, format: :json)
