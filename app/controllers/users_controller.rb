class UsersController < ApplicationController
  # get 
  def signup
  	#render view (form) and let user register

  end

  # post 
  def confirmation
  	# # post request that handles signing up 
  	# puts '-----users#confirmation'
  	# puts user_params 
 		# puts '--------'
 		@user = User.new(user_params)
 		if @user.save

 			session[:user_id] = @user.id 
 		else 
 			@message = 'User account exists or passwords do not match'
 			render 'users/signup'

 		end 
  end

  private 

  	def user_params
  		params.require(:user).permit(:username, :email, :password, :password_confirmation)
  	end 
end
