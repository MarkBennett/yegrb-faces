class AddUserDetails < ActiveRecord::Migration
  def self.up
    add_column :users, :display_name, :string
    add_column :users, :github_account, :string
    add_column :users, :twitter_account, :string
  end

  def self.down
    remove_column :users, :display_name
    remove_column :users, :github_account
    remove_column :users, :twitter_account
  end
end
