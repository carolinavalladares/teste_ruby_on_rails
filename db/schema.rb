# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_26_182025) do
  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.string "referencia"
    t.integer "fornecedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_emails_on_fornecedor_id"
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "cidade"
    t.string "endereco"
    t.string "bairro"
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.float "quantidade"
    t.float "valor"
    t.integer "pedido_id", null: false
    t.integer "produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_items_on_pedido_id"
    t.index ["produto_id"], name: "index_items_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.datetime "datahora"
    t.string "notafiscal"
    t.float "valorfrete"
    t.float "desconto"
    t.float "valortotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "transportadora_id", null: false
    t.index ["transportadora_id"], name: "index_pedidos_on_transportadora_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fornecedor_id", null: false
    t.index ["fornecedor_id"], name: "index_produtos_on_fornecedor_id"
  end

  create_table "telefones", force: :cascade do |t|
    t.string "ddd"
    t.string "numero"
    t.string "referencia"
    t.integer "fornecedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_telefones_on_fornecedor_id"
  end

  create_table "transportadoras", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "emails", "fornecedors"
  add_foreign_key "items", "pedidos"
  add_foreign_key "items", "produtos"
  add_foreign_key "pedidos", "transportadoras"
  add_foreign_key "produtos", "fornecedors"
  add_foreign_key "telefones", "fornecedors"
end
