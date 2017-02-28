class CreateTbClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :tb_clientes do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
