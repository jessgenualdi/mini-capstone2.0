class CartedJewelry < ApplicationRecord
  belongs_to :user
  belongs_to :jewelry
  belongs_to :order
end
