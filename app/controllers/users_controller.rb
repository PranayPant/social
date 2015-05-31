class UsersController < ApplicationController

	before_action :authenticate_user!

	@@all_accounts = ['google_oauth2', 'facebook']

	def index
	
	end

	def show
		@user            =  current_user
		@have_auth       =  @user.accounts
		@need_auth_names =  @@all_accounts - @have_auth.map{|x| x.provider}
	end

end