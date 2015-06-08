class CallbacksController < Devise::OmniauthCallbacksController

  def facebook
    user = User.from_omniauth(request.env["omniauth.auth"])
    if !Account.find_by_provider('facebook')
    	account = Account.create(user_id: user.id, provider: 'facebook', is_authenticated: true)
    end
    sign_in_and_redirect(user)
  end

  def google_oauth2
    user = User.from_omniauth(request.env["omniauth.auth"])
    if !Account.find_by_provider('google_oauth2')
    	account = Account.create(user_id: user.id, provider: 'google_oauth2', is_authenticated: true)
    end
    sign_in_and_redirect(user)
  end
  
end