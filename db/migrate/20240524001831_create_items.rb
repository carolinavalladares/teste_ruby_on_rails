class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.float :quantidade
      t.float :valor
      t.references :pedido, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
