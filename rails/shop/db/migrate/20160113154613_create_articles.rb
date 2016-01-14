class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.integer :article_id
      t.integer :market_id

      t.timestamps null: false
    end
  end
end
