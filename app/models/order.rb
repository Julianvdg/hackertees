class Order < ApplicationRecord
  has_many :order_lines
  has_many :products, :through => :order_lines
  belongs_to :user

  def total_price
    total = 0.0
    self.order_lines.each do |orderline|
      total += orderline[:sub_total].to_f
    end
    total
  end
end
