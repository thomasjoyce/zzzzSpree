class Deal < ActiveRecord::Base
  
  as_enum :category_type, [ :deal, :freebie ], :column => 'category_type'
  #validates_as_enum :category_type
  
  belongs_to :user
  belongs_to :brand
  belongs_to :store
  #has_many :comments


end