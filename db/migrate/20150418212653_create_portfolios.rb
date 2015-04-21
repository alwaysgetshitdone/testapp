class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :client_id
      t.string :name
      t.string :reference
      t.text :comment
      t.string :strategy

      t.timestamps null: false
    end
  end
end
