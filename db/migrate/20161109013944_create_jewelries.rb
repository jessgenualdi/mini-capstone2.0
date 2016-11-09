class CreateJewelries < ActiveRecord::Migration[5.0]
  def change
    create_table :jewelries do |t|
      t.string :kind
      t.string :metal
      t.string :gemstone
      t.string :price

      t.timestamps
    end
  end
end
