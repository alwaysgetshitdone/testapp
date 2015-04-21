json.array!(@clients) do |client|
  json.extract! client, :id, :name, :id
  json.url client_url(client, format: :json)
end
