class AddOrderToOrderLine < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_lines, :order, foreign_key: true
  end
end
