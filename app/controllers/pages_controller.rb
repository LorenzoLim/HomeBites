class PagesController < ApplicationController
  def home
    @dishes = Dish.all
  end

  def cuisine
  end

  def cooks
  end

  def order
  end

  def contact
  end

  def profile
    @user = current_user
  end
end
