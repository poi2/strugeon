json.array!(@orders) do |order|
  json.extract! order, :id, :cart_id, :deal_unit_id, :quantity
  json.url order_url(order, format: :json)
end
