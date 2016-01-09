json.array!(@payments) do |payment|
  json.extract! payment, :id, :cart_id, :auth_code, :payment_method
  json.url payment_url(payment, format: :json)
end
