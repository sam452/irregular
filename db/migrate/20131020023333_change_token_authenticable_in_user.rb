class ChangeTokenAuthenticableInUser < ActiveRecord::Migration
  change_table :users do |t|
  			t.rename :token_authenticatable, :authentication_token
  		end
end
 