class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :description
      t.string :image_url
      t.string :title
      t.decimal :price

      t.timestamps null: false
    end
  end
end