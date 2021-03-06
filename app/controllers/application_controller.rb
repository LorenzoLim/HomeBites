class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  include OrderHelper
  before_action :set_order

  def set_order
    @order = current_order
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:name, :email, :address, :role, :image, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:name, :email, :address, :role, :password, :password_confirmation, :current_password)
    end
  end
end
