class UserController < ApplicationController
  before_action :authenticate_user!
  def profile
  end

  def dish
  end
end
