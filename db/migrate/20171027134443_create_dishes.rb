class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cuisine
      t.string :price
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
