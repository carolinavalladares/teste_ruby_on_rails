class Transportadora < ApplicationRecord
    has_many :pedidos, inverse_of: :transportadora,  dependent: :destroy


    validates :nome, presence: {message: "precisa estar preenchido"},
                    length: {minimum: 5,message: "precisa ter 5 caracteres ou mais"}
end
