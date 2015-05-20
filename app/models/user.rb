class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  def self.from_omniauth(auth)
    
    byebug

    # Extract data from request.env["omniauth.auth"]
    email = auth.info.email
    provider = auth.provider
    uid = auth.uid
    token = auth.credentials.token
    password = Devise.friendly_token[0,20]

    # Find user in database
    user = User.find_by_email(email)

    # Update or create user
    if user
      user.update(email: email, provider: provider, uid: uid, token: token, password: password)
      user
    else 
      user = User.new(email: email, provider: provider, uid: uid, token: token, password: password)
      user.save!
      user
    end

  end 

end