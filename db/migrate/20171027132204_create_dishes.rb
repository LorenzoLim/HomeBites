class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cuisine
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
