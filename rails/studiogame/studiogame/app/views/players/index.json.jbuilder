json.array!(@players) do |player|
  json.extract! player, :id, :title, :health, :name
  json.url player_url(player, format: :json)
end
