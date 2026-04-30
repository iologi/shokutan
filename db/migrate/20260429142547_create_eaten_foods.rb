class CreateEatenFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :eaten_foods do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food, foreign_key: true
      t.string :custom_name
      t.date :ate_on

      t.timestamps
    end
  end
end
