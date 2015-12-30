json.array!(@innovators) do |innovator|
  json.extract! innovator, :id, :name, :email, :password, :birth, :description, :url
  json.url innovator_url(innovator, format: :json)
end
