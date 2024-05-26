class CreateTransportadoras < ActiveRecord::Migration[7.1]
  def change
    create_table :transportadoras do |t|
      t.string :nome

      t.timestamps
    end
  end
end
