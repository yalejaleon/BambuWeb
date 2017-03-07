class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :codigo
      t.string :descripcion
      t.string :tipo_servicio
      t.string :codigo_organizacion
      t.string :imagen

      t.timestamps
    end
  end
end
