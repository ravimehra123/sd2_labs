class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_reference :users, :secret_code, index: true
  end

end
