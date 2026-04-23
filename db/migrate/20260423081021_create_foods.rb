class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name, null: false, index: { unique: true }
      t.integer :rarity
      t.string :image_url
      t.string :description
      
      t.timestamps
    end
  end
end
