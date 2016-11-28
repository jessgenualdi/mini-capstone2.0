class AddColumnToJewelry < ActiveRecord::Migration[5.0]
  def change
    add_column :jewelries, :in_stock, :boolean, default: true
  end
end
