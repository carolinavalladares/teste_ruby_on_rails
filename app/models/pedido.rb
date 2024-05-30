class Pedido < ApplicationRecord
    has_many :items, inverse_of: :pedido, dependent: :destroy
    accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

    belongs_to :transportadora


    validates :notafiscal, presence: {message: "precisa estar preenchida"}
    validates :valorfrete, presence: {message: "precisa estar preenchido"}
    validates :valortotal, presence: {message: "precisa estar preenchido"}
    validates :desconto, presence: {message: "precisa estar preenchido"}
    validates :datahora, presence: {message: "precisa estar preenchida"}
    validates :transportadora, presence: {message: "precisa estar preenchida"}



end
