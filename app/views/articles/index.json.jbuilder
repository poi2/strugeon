json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :target_amount, :closed_at
  json.url article_url(article, format: :json)
end
