class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authorize


  protected

  def authorize
  	if session[:user_logged]
  		@user_logged= User.find_by(id: session[:user_logged])
  		@empresa_logged = @user_logged.empresa
  	end
  end
end
