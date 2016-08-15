class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.integer :quantity
      t.float :unit_price
      t.float :sub_total

      t.timestamps
    end
  end
end
