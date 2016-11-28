class Jewelry < ApplicationRecord
  belongs_to :supplier
  has_many :images
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
