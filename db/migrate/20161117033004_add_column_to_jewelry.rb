class AddColumnToJewelry < ActiveRecord::Migration[5.0]
  def change
    add_column :jewelries, :in_stock, :booleen
  end
end
