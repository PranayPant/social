class Account < ActiveRecord::Base

	belongs_to :user, dependent: :destroy

end
