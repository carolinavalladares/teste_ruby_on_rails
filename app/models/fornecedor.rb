class Fornecedor < ApplicationRecord

    has_many :produtos, inverse_of: :fornecedor, dependent: :destroy
    
    has_many :emails, inverse_of: :fornecedor, dependent: :destroy
    accepts_nested_attributes_for :emails, allow_destroy: true

    has_many :telefones, inverse_of: :fornecedor, dependent: :destroy
    accepts_nested_attributes_for :telefones, allow_destroy: true

end
