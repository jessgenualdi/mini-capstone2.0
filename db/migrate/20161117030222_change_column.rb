class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :jewelries, :price, "numeric USING CAST(price AS numeric)"
    change_column :jewelries, :price, :decimal, precision: 10, scale: 2
  end
end
