class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def after_sign_in_path_for(users)
      chatrooms_path
    end


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:password, :remember_me) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( :email, :password, :password_confirmation, :current_password) }
    end
end
