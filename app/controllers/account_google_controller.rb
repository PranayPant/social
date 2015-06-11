
class GoogleFeaturesController < ApplicationController

	require 'net/http'
	require 'google/api_client'

	@@scopes = {'gmail': 'https://mail.google.com/'}
  
  def authorize

  	byebug
	
		feature = params[:feature]

		client_secrets = Google::APIClient::ClientSecrets.load
  	auth_client = client_secrets.to_authorization

  	scope = @@scopes[feature]
  	auth_client.update!(scope: scope)
  	auth_uri = auth_client.authorization_uri

  	# Redirect to auth_uri and get code
  	Net::HTTP.start(auth_uri.host, auth_uri.port) do |http|
  		req = Net::HTTP::Get.new(uri)
  		res = http.request(req)
		end

		# Get access token from code
		auth_client.code = res.code
		auth_client.fetch_access_token!
  	
  end

end
