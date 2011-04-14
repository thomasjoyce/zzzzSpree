class Brand  < ActiveRecord::Base
  
    has_many :deals
    has_many :stores


end