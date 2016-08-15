class Product < ApplicationRecord
  has_many :orderlines
  has_and_belongs_to_many :orders, :through => :orderlines
end
