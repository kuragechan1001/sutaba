class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :drink_name
      t.string :whipcream
      t.string :ice_amount
      t.string :powder_type
      t.string :syrup_type
      t.string :milk_type
      t.string :sauce_type
      t.text :other_customizeation

      t.timestamps
    end
  end
end
