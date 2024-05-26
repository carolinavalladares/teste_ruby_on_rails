class AddTransportadoraToPedidos < ActiveRecord::Migration[7.1]
  def change
    add_reference :pedidos, :transportadora, null: false, foreign_key: true
  end
end
