class CreateWishlistFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :wishlist_foods do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
    add_index :wishlist_foods, [:user_id, :food_id], unique: true
  end
end
