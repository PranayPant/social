class AddNameFieldToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string, :default => "<No Name Chosen>"
  end
end
