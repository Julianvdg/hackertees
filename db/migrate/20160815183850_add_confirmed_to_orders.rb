class AddConfirmedToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :confirmed, :boolean
  end
end
