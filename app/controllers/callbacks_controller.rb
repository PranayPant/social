class CallbacksController < Devise::OmniauthCallbacksController

    def facebook
        do_callbacks
    end

    def google_oauth2
    	do_callbacks
    end

    private

    def do_callbacks

    	@user = User.from_omniauth(request.env["omniauth.auth"])

        if @user.persisted?
      		sign_in_and_redirect(@user)
      	else
      		byebug
      		provider = @user.provider
      		uid = @user.uid
      		@user = User.find_by_email(@user.email)
      		@user.provider = provider
      		@user.uid = uid
      		@user.save!
      		session["devise.user.attributes"] = @user.attributes
      		sign_in_and_redirect(@user)
      	end
    end
    
end