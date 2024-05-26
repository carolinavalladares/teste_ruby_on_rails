class CreateEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :emails do |t|
      t.string :email
      t.string :referencia
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
