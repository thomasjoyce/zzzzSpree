class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string      :name,  :null    => false
      t.references  :brand
      t.references  :deal 
      t.references  :address
      t.timestamps
    end
  end

  def self.down
      drop_table :stores
  end
end