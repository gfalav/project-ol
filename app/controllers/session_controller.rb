class SessionController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])

  	if user and user.authenticate(params[:password])
  		session[:user_logged]= user.id
  		redirect_to root_url
  	else
  		redirect_to login_url, alert: "Usuario/Password no coinciden"
  	end

  end

  def destroy
	session[:user_logged]= nil
  	redirect_to root_url, notice: "Logged Out"
  end
end
