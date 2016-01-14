class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.text :description
      t.integer :market_id

      t.timestamps null: false
    end
  end
end
