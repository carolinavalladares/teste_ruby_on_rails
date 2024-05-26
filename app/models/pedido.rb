class Pedido < ApplicationRecord
    has_many :items, inverse_of: :pedido, dependent: :destroy
    accepts_nested_attributes_for :items, allow_destroy: true

    belongs_to :transportadora
end
