class UserController < ApplicationController
  before_action :authenticate_user!
  def profile
    @users = User.all
  end

  def dish
  end
end
