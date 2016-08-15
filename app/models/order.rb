class Order < ApplicationRecord
  has_many :orderlines
  has_and_belongs_to_many :products, :through => :orderlines 
end
