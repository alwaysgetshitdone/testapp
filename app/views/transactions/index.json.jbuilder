json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :contract_id, :portfolio_id, :qty, :buy_price, :current_price, :variance_in_percent, :variance_in_currency
  json.url transaction_url(transaction, format: :json)
end
