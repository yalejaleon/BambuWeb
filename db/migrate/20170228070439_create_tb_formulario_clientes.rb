class CreateTbFormularioClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :tb_formulario_clientes do |t|
      t.string :codigo
      t.string :codigo_cliente
      t.string :codigo_formulario

      t.timestamps
    end
  end
end
