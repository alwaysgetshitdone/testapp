json.array!(@contracts) do |contract|
  json.extract! contract, :id, :name, :sector, :industry, :country, :type, :subtype, :potfolio_id
  json.url contract_url(contract, format: :json)
end
