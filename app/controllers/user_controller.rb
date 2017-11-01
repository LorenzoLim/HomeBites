class UserController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def profile
    @users = User.all
  end

  def dish
  end

end
