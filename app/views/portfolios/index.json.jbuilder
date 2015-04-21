json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :client_id, :name, :reference, :comment, :strategy
  json.url portfolio_url(portfolio, format: :json)
end
