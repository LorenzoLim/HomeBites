class Order < ApplicationRecord
  has_many :order_dishes
  has_many :dishes, through: :order_dishes

  def total_items
    order_dishes.count
  end

  def total_price
    order_dishes
      .includes(:dish)
      .reduce(0) { |total, order_dish| total + (order_dish.qty * order_dish.dish.price) }
    # Pure SQL total count, nice and fast if showing total all over the shop.
    # order_total = self.class.where(id: id).joins(order_dishes: :dish).sum('COALESCE(dishes.price * order_dishes.qty, 0.0)')
  end

  def total_price_cents
    (total * 100).to_i
  end
end
