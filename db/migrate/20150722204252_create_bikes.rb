class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :style
      t.string :brand
      t.integer :year
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
