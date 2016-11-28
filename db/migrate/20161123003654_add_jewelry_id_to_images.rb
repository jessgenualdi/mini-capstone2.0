class AddJewelryIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :jewelry_id, :integer
  end
end
