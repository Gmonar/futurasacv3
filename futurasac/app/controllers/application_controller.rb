class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  layout :plantilla_by_resource

  def plantilla_by_resource
    #if user.role? :driver or user.role? :passenger or user.role? :user or user.role? :administrator
      'plantilla_sistema'
    #else
    #  'plantilla'
    #end
  end
  
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :lastname, :identitydocument, :birthdate, :email, :password, :password_confirmation)
    end
  end
end
