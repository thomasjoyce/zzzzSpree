class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.integer    :type
      t.text       :description,  :null    => false
      t.boolean    :status,       :default => true
      t.datetime   :expired_at
      t.datetime   :terminated_at
      t.references :users 
      t.timestamps
    end
  end

  def self.down
      drop_table :deals
  end
end
