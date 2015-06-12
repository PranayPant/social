
class GoogleFeaturesController < ApplicationController

  require 'net/http'
  require 'google/api_client'

  @@scopes = {'gmail' => 'https://mail.google.com/'}

  def authorize

    feature = params[:feature]

    client_secrets = Google::APIClient::ClientSecrets.load
    auth_client = client_secrets.to_authorization

    scope = @@scopes[feature]

    auth_client.update!(scope: scope)
    auth_uri = auth_client.authorization_uri

    # Redirect to auth_uri and get code
    redirect_to (auth_uri)
    res = Net::HTTP.get_response(URI(auth_uri))

    auth_client.code = res.code




  end
	

end
