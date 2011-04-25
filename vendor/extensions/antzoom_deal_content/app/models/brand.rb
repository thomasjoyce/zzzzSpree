class Brand  < ActiveRecord::Base
    
      has_many :deals, :dependent => :destroy
      has_many :stores

end