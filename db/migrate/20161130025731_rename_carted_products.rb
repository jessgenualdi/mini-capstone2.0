class RenameCartedProducts < ActiveRecord::Migration[5.0]
  def change
    rename_table :carted_products, :carted_jewelries
    rename_column :carted_jewelries, :product_id, :jewelry_id
  end
end
