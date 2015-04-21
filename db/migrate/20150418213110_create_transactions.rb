class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :contract_id
      t.integer :portfolio_id
      t.integer :qty
      t.decimal :buy_price
      t.decimal :current_price
      t.decimal :variance_in_percent
      t.decimal :variance_in_currency

      t.timestamps null: false
    end
  end
end
