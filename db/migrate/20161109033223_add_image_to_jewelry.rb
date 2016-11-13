class AddImageToJewelry < ActiveRecord::Migration[5.0]
  def change
    add_column :jewelries, :image, :string
  end
end
