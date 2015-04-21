class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.string :sector
      t.string :industry
      t.string :country
      t.string :type
      t.string :subtype
      t.string :potfolio_id

      t.timestamps null: false
    end
  end
end
