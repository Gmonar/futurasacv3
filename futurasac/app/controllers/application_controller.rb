class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  layout 'plantilla'
  
  protect_from_forgery with: :exception
  
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :lastname, :identitydocument, :birthdate, :email, :password, :password_confirmation)
    end
  end
end
