class Category < ApplicationRecord
  has_many :category_jewelries
  has_many :jewelries, through: :category_jewelries
end
