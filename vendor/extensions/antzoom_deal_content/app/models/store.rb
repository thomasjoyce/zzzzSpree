class Store  < ActiveRecord::Base
  
    belongs_to :brand
    has_many :deals


end