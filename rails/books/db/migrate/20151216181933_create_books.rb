class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :autor
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
