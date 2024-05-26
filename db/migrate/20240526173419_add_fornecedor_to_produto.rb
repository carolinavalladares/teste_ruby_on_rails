class AddFornecedorToProduto < ActiveRecord::Migration[7.1]
  def change
    add_reference :produtos, :fornecedor, null: false, foreign_key: true
  end
end
