class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
  #This is how devise provides an easy way to extend which attributes it allows.
  #When I update the sign up to be more complex, i.e. adding an avatar, make sure to add it here....just like :name
end
