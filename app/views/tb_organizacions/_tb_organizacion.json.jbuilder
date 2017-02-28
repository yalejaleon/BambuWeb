json.extract! tb_organizacion, :id, :rif, :nombre, :correo, :direccion, :telefono, :mision, :vision, :created_at, :updated_at
json.url tb_organizacion_url(tb_organizacion, format: :json)
