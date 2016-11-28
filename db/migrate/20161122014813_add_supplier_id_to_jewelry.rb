class AddSupplierIdToJewelry < ActiveRecord::Migration[5.0]
  def change
    add_column :jewelries, :supplier_id, :integer
  end
end
