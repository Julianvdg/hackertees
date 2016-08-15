class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :product_image
      t.boolean :in_stock

      t.timestamps
    end
  end
end
