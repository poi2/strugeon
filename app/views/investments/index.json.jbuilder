json.array!(@investments) do |investment|
  json.extract! investment, :id, :ticked_id, :investor_id, :canceled_at
  json.url investment_url(investment, format: :json)
end
