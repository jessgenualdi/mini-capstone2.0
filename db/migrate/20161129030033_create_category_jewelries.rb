class CreateCategoryJewelries < ActiveRecord::Migration[5.0]
  def change
    create_table :category_jewelries do |t|
      t.integer :jewelry_id
      t.integer :category_id

      t.timestamps
    end
  end
end
