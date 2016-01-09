json.array!(@deal_units) do |deal_unit|
  json.extract! deal_unit, :id, :deal_id, :title, :description, :price, :reward
  json.url deal_unit_url(deal_unit, format: :json)
end
