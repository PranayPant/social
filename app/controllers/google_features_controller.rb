
class GoogleFeaturesController < ApplicationController

	require 'net/http'
	require 'google/api_client'

	@@scopes = { 'gmail' => 'email' }
  
  def authorize

		client_secrets = Google::APIClient::ClientSecrets.load
		auth_client = client_secrets.to_authorization
		auth_client.update!(
  		:scope => 'https://www.googleapis.com/auth/drive.metadata.readonly',
  		:redirect_uri => 'https://localhost:3000/oauth2callback'
		)

		auth_uri = auth_client.authorization_uri.to_s

		redirect_to(auth_uri)

		res = Net::HTTP.get_response(URI(auth_uri))
		code = res.code

	end

end
