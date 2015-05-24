class UsersController < ApplicationController

	before_action :authenticate_user!

	def index
	
	end

	def show
		@user = current_user

		require 'google/api_client'
		require 'google/api_client/client_secrets'
		require 'google/api_client/auth/installed_app'
	
		client = Google::APIClient.new(
  			:application_name => 'my-social-hub'
		)

		gmail_api = client.discovered_api('gmail', 'v1')

		client_secrets = Google::APIClient::ClientSecrets.load

		flow = Google::APIClient::InstalledAppFlow.new(
  			:client_id => client_secrets.client_id,
  			:client_secret => client_secrets.client_secret,
  			:scope => ['https://mail.google.com/']
		)
		
		client.authorization = flow.authorize

		@result = client.execute(
  			:api_method => gmail_api.users.labels.list,
  			:parameters => {'userId' => 'me'}
		)

	end

end