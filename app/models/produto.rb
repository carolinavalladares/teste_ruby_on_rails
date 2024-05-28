class Produto < ApplicationRecord
    has_many :items

    belongs_to :fornecedor

    validates :nome, presence: {message: "precisa estar preenchido"}, 
                    length: {minimum: 5, message: "precisa ter no mínimo 5 caracteres"}
    validates :fornecedor_id, presence: {message: "precisa ser selecionado"}

end
