class CartedJewelry < ApplicationRecord
  belongs_to :user
  belongs_to :jewelry
  belongs_to :order

  validates :quantity, numericality: { greater_than 0, only_integer: true }

end
