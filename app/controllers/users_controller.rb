class UsersController < ApplicationController

	# Devise authentication
	before_action :authenticate_user!

	def index
	
	end

	def show
		@user = current_user
		
	end

end
