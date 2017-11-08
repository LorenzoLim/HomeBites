class PagesController < ApplicationController
  def home
    @dishes = Dish.all
  end

  def cooks
    @users = User.all
    @dishes = Dish.where(user: @user)
    # @cuisines = @dishes.select(:cuisine).uniq
  end

  def order
  end

  def contact
  end

  def profile
    @user = User.find(params[:id])
    @dishes = Dish.where(user: @user)
  end
end
