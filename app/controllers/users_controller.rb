class UsersController < ApplicationController

	before_action :authenticate_user!

	@@all_account_names = ['google_oauth2', 'facebook']

	def index
	
	end

	def show

		@user = current_user

		# List user accounts that have/need authentication
		@have_auth =  @user.accounts
		@need_auth_names =  @@all_account_names - @have_auth.map{|x| x.provider}

	end

end