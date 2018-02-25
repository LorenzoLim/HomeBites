class OrderController < ApplicationController
  def show
  end

  def add_dish
    order = current_order_or_new
    dish = Dish.find(params[:dish_id])
    existing_line_item = OrderDish.find_by(dish: dish, order: order) rescue nil

    if existing_line_item
      existing_line_item.qty = existing_line_item.qty + params[:qty].to_i
      existing_line_item.save
      redirect_to order_path, notice: "Added #{params[:qty]} x #{dish.name} to order"
      return
    end

    if OrderDish.create!(dish: dish, order: order, qty: params[:qty].to_i)
      redirect_to order_path, notice: "Added #{params[:qty]} x #{dish.name} to order"
    else
      redirect_to order_path, notice: "Failed to add to order"
    end
  end

  def remove_dish
    order_dish = OrderDish.includes(:dish).find_by_id(params[:order_dish_id])
    dish = order_dish.dish
    order_dish.delete
    redirect_to order_path, notice: "Removed #{order_dish.qty} x #{dish.name} from order"
  end

  private

  def current_order_or_new
    order = current_order
    return order if !order.nil?

    # Create new order and set the id in the session hash
    new_order = Order.create
    session[:order_id] = new_order.id
    return new_order
  end
end
