json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :article_id, :price, :reword
  json.url ticket_url(ticket, format: :json)
end
