class RenameTypeToCategoryType < ActiveRecord::Migration
  def self.up
    rename_column :deals, :type, :category_type
  end

  def self.down
  end
end
