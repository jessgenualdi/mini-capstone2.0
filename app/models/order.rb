class Order < ApplicationRecord
  has_many :carted_jewelries
  has_many :jewelries, through: :carted_jewelries
end
