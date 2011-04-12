class RenameUsersIdToUserId < ActiveRecord::Migration
  def self.up
    rename_column :deals, :users_id, :user_id
  end

  def self.down
  end
end
