class RemoveImageFromJewelry < ActiveRecord::Migration[5.0]
  def change
    remove_column :jewelries, :image, :string
  end
end
