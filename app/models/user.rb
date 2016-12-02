class User < ApplicationRecord
  has_secure_password
  has_many :carted_jewelries
  has_many :orders, through: :carted_jewelries
  has_many :jewelries, through: :carted_jewelries
end
