class Order < ApplicationRecord
  has_many :order_lines
  has_many :products, :through => :order_lines
  belongs_to :user
  before_save :before_save

  def total_price
    total = 0.0
    self.order_lines.each do |orderline|
      total += orderline[:sub_total].to_f
    end
    total
  end

  def before_save
    self[:total_price] = total_price
  end

  def currency(price)
    number_to_currency(price, :locale => :fr)
  end

end
