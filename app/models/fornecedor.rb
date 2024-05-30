class Fornecedor < ApplicationRecord

    has_many :produtos, inverse_of: :fornecedor, dependent: :destroy
    
    has_many :emails, inverse_of: :fornecedor, dependent: :destroy
    accepts_nested_attributes_for :emails, allow_destroy: true, reject_if: :all_blank

    has_many :telefones, inverse_of: :fornecedor, dependent: :destroy
    accepts_nested_attributes_for :telefones, allow_destroy: true, reject_if: :all_blank


    validates :nome, presence:{message: 'precisa estar preenchido'},
                    length:{minimum: 5, message: "precisa ter no mínimo 5 caracteres"},
                    uniqueness: {message: "já existe"}
    validates :cidade, presence:{message: 'precisa estar preenchida'}
    validates :endereco, presence:{message: 'precisa estar preenchido'}
    validates :bairro, presence:{message: 'precisa estar preenchido'}
    validates :numero, presence:{message: 'precisa estar preenchido'}
    validates :telefones, length: { minimum: 1 ,message:'precisa ter pelo menos um telefone'} 

end
