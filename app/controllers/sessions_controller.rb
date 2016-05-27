class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])
	  	if @user && @user.authenticate(params[:session][:password])
			reset_session
	  		session[:user_id] = @user.id
		  	redirect_to '/'
	  	else
	  		flash[:login_error] = 'Email ou mot de passe incorrect'
	  		redirect_to '/login'
	  	end 
	end

	def destroy
		session[:user_id] = nil 
		reset_session
		redirect_to '/'	
	end

end
