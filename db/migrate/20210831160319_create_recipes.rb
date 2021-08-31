class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :ingredients
      t.string :description

      t.timestamps
      t.integer :user_id
    end
  end
end
