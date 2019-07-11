class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:uname, :email, :password, :password_confirmation, :uid, :img_path, :user_type)
    end
  end
end
