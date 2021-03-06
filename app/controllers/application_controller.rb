class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resources)
    user_path(current_user)
  end
  
  def after_sign_in_path_for(resources)
    user_path(current_user)
  end

  def after_sign_out_path_for(resources)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email) }
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :firstname, :lastname) }
  end
end
