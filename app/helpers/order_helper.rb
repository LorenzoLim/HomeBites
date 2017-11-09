module OrderHelper
  def current_order
    if !session.has_key? :order_id
      @order = nil
      return nil
    end

    order = Order.includes(:order_dishes, :dishes).find_by_id(session[:order_id]) rescue nil
    if order == nil
      # Dodgy session :order_id so remove and mosey on.
      session.delete :order_id
      return nil
    end

    return order
  end
end
