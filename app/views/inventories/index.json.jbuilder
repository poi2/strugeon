json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :deal_unit_id, :stock
  json.url inventory_url(inventory, format: :json)
end
