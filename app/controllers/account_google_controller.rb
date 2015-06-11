
class GoogleFeaturesController < ApplicationController

  require 'net/http'
  require 'google/api_client'

  @@scopes = {'gmail' => 'https://mail.google.com/'}

  def authorize

    feature = params[:feature]

    client_secrets = Google::APIClient::ClientSecrets.load
    auth_client = client_secrets.to_authorization

    scope = @@scopes[feature]


  end
	

end
