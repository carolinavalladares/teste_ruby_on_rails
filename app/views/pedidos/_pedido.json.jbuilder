json.extract! pedido, :id, :datahora, :notafiscal, :valorfrete, :desconto, :valortotal, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
