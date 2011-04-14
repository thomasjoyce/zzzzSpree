class FixBrandsStoresHasManyDealsRelationships < ActiveRecord::Migration
  def self.up
      add_column :deals, :brand_id , :integer
      add_column :deals, :store_id , :integer
      add_index  :deals, :brand_id
      add_index  :deals, :store_id
      remove_column :brands, :deal_id
      remove_column :stores, :deal_id
  end

  def self.down
      remove_column :deals, :brand_id
      remove_column :deals, :store_id
      remove_index  :deals, :brand_id
      remove_index  :deals, :store_id
      add_column    :brands, :deal_id, :integer
      add_column    :stores, :deal_id, :integer
  end
end