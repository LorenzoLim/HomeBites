class PagesController < ApplicationController
  def home
    @dishes = Dish.all
  end

  def cooks
  end

  def order
  end

  def contact
  end

  def profile
    @user = current_user
    @dishes = Dish.all
  end
end
