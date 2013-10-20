class AddDeviseColumnsToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      add_column :users, :token_authenticatable, :string
    end
  end
end
