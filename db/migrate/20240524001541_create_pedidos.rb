class CreatePedidos < ActiveRecord::Migration[7.1]
  def change
    create_table :pedidos do |t|
      t.datetime :datahora
      t.string :notafiscal
      t.float :valorfrete
      t.float :desconto
      t.float :valortotal

      t.timestamps
    end
  end
end
