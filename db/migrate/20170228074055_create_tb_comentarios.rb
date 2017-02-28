class CreateTbComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :tb_comentarios do |t|
      t.string :tipo_comentario
      t.string :codigo
      t.string :descripcion
      t.string :codigo_usuario
      t.string :codigo_usuario_web

      t.timestamps
    end
  end
end
