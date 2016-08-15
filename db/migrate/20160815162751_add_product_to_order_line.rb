class AddProductToOrderLine < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_lines, :product, foreign_key: true
  end
end
