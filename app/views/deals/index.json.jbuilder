json.array!(@deals) do |deal|
  json.extract! deal, :id, :title, :target_amount, :description, :start_at, :end_at
  json.url deal_url(deal, format: :json)
end
