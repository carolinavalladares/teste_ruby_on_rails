class Transportadora < ApplicationRecord
    has_many :pedidos, inverse_of: :transportadora,  dependent: :destroy
end
