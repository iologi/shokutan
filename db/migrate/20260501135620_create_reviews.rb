class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.references :eaten_food, null: false, foreign_key: true
      t.integer :satisfaction, null: false
      t.text :comment
      t.string :recipe
      t.string :place
      t.string :image_url

      t.timestamps
    end
  end
end
