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

		# Load client data
		file = File.read('client_secrets.json')
		data = JSON.parse(file)
		client_id = data['client_id']
		client_secret = data['client_secret']

		# OAuth2 Client
		client = OAuth2::Client.new(
  			client_id,
  			client_secret,
  			{
    			site:         "https://accounts.google.com",
    			token_url:    "/o/oauth2/token",
    			token_method: :post,
    			grant_type:   "refresh_token",
    			scope:        "https://mail.google.com/"
  			}
  		)
  		
  		# Access Token
  		access_token = OAuth2::AccessToken.from_hash
  		(
  			client,
  			{
  				client: client,
  				refresh_token: @user.refresh_token
  			}
  		)

	end

end