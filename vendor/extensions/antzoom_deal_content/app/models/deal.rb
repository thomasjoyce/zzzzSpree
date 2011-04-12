class Deal < ActiveRecord::Base
  
  as_enum :type, {:deal => 1, :freebie => 0}, :column => 'type'
  validates_as_enum :type
  
  belongs_to :brand
  belongs_to :store

  has_many :comments


end