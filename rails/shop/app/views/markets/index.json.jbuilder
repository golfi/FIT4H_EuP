json.array!(@markets) do |market|
  json.extract! market, :id, :name, :description, :market_id
  json.url market_url(market, format: :json)
end
