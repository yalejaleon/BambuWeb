json.extract! tb_comentario, :id, :tipo_comentario, :codigo, :descripcion, :codigo_usuario, :codigo_usuario_web, :created_at, :updated_at
json.url tb_comentario_url(tb_comentario, format: :json)
