class CreateAccounts < ActiveRecord::Migration
  
	def change
    	create_table :accounts do |t|
    		t.integer    :user_id
    		t.string     :provider
    		t.boolean    :is_authenticated, default: false
    		t.timestamps null: false
    	end
    	add_index :accounts, :provider, unique: true
  	end
end
