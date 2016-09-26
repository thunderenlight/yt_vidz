class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(request.env['omniauth.auth'])
		session[:user_id] = user.id
		flash[:sucess] = "Welcome, #{user.name}"
		redirect_to root_url
	end
	def destroy
		session[:user_id] = nil
		flash[:sucess] = "Goodbye!"
		redirect_to root_url
	end

end