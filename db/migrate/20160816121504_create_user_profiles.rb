class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
