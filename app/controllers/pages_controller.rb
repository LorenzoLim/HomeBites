class PagesController < ApplicationController
  def home
    @dishes = Dish.all
  end

  def cooks
    @users = User.all
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
