class Fornecedor < ApplicationRecord

    has_many :produtos, inverse_of: :fornecedor, dependent: :destroy

end
