class UsersController < ApplicationController

	before_action :authenticate_user!

	def index
	
	end

	def show
		@user = current_user
		# Gmail authentication
        #imap = Net::IMAP.new('imap.gmail.com', 993, usessl = true, certs = nil, verify = false)

        #imap.authenticate('XOAUTH2', @user.email, @user.token)
        
	end

end