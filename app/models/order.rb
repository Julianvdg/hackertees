class Order < ApplicationRecord
  has_many :orderlines
  has_many :products, :through => :orderlines 
end
