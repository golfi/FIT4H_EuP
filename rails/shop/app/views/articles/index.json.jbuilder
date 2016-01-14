json.array!(@articles) do |article|
  json.extract! article, :id, :name, :description, :article_id, :market_id
  json.url article_url(article, format: :json)
end
