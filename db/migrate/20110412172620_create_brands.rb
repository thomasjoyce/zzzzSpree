class CreateBrands < ActiveRecord::Migration
  def self.up
    create_table :brands do |t|
      t.string      :name,  :null    => false
      t.references  :deal 
      t.timestamps
    end
  end

  def self.down
      drop_table :brands
  end
end