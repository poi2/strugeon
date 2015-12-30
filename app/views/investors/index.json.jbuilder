json.array!(@investors) do |investor|
  json.extract! investor, :id, :name, :email, :password, :birth
  json.url investor_url(investor, format: :json)
end
