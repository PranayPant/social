class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

  	# Customize Devise default routing after sign in
  	def after_sign_in_path_for(user)
    	user_path(user.id)
  	end

  	def sign_in_and_redirect(user)
  		sign_in(user)
  		redirect_to user_path(user.id)
  	end
end
