class CreateOrderDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :order_dishes do |t|
      t.references :order, foreign_key: true
      t.references :dish, foreign_key: true
      t.integer :qty
    end
  end
end
