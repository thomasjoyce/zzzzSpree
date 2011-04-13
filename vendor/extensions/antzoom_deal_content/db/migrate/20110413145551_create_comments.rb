class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string      :description,  :null    => false
      t.references  :deal 
      t.references  :user
      t.timestamps
    end
  end

  def self.down
      drop_table :comments
  end
end