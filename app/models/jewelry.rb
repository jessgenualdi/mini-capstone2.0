class Jewelry < ApplicationRecord
  belongs_to :supplier
  has_many :category_jewelries
  has_many :jewelries, through: :category_jewelries
  has_many :images
  has_many :carted_jewelries
  has_many :orders, through: :carted_jewelries

  validates :kind, presence: true
  validates :gemstone, presence: true
  validates :metal, presence: true
  validates :price, numericality: true
  
  def sale_message
    price = price.to_i
    if price > 200
      "Jewelry is expensive!"
    else
      "Jewelry is a decent price!"
    end
  end

  def tax_method
    price.to_f * 0.09
  end 

  def total
    price.to_f + tax_method
  end
end
