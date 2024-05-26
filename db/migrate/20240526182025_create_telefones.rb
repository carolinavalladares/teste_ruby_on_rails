class CreateTelefones < ActiveRecord::Migration[7.1]
  def change
    create_table :telefones do |t|
      t.string :ddd
      t.string :numero
      t.string :referencia
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
