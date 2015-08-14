class SessionsController < ApplicationController
  #get
  def login
  end

  #post
  def confirmation
  	#show message regarding login status 
  	@user = User.find_by_email(params[:email])

  	if @user && @user.authenticate(params[:password]) #working with has_secure_password in model
  		session[:user_id] = @user.user_id
  		redirect_to '/'
  	else 
  		@message = 'User account or password invalid'
  		render '/sessions/login'
  	end 
  end

  #get
  def logout
  	sessions[:user_id] = nil
  	redirect_to '/users/login'
  end
end
