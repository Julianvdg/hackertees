class OrderLine < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :before_save

  def sub_total
      unit_price * quantity
  end

  def unit_price
    if persisted?
      self.unit_price
    else
      product.price
    end
  end

  def before_save
    self.unit_price = unit_price
    self.sub_total = quantity * self.unit_price
  end
end
