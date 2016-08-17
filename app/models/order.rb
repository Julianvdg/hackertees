class Order < ApplicationRecord
  has_many :order_lines
  has_many :products, :through => :order_lines
  belongs_to :user
end
