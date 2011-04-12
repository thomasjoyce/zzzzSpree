source 'http://rubygems.org'

gem 'rails', '3.0.5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems - development only
group :development do
  gem 'passenger', '3.0.5'
  gem 'pg'
end

# Production Heroku Gems
gem 'heroku'
gem 'taps'

# Get Spree to work in Heroku & store on Amazon S3.
gem 'spree_heroku', '1.0.0', :git => 'git://github.com/paxer/spree-heroku.git'
gem 'aws-s3'

# Spree AddressBook
#gem 'spree_address_book', :git => 'git://github.com/romul/spree_address_book.git', :branch => 'master'
gem 'spree_address_book', :path => 'vendor/extensions/spree_address_book'

# To get a specific commit version on spree github use :ref 
# gem 'spree', :git => 'git://github.com/spree/spree.git', :ref => 'a24b44aed6675866fb0e'

## Current bundler does not like same gem listed on 2 different sources. 
#  [ ie. group :development do xgem, '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore' end  
#      group :production do  xgem, :git => 'git@github.com:me/xgem.git' end ]
## Bundler 1.1 will have it but for now, use this hack instead.
# http://www.cowboycoded.com/2010/08/10/using-2-sources-for-a-gem-in-different-environments-with-bundler
if ENV['MY_BUNDLE_ENV'] == "dev"
    ## DEVO AntZoom version of own core spree gems personalize
    gem 'spree',        '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore'
    gem 'spree_api',    '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore/api'
    gem 'spree_auth',   '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore/auth'
    gem 'spree_core',   '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore/core'
    gem 'spree_dash',   '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore/dash'
    gem 'spree_promo',  '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore/promo'
    gem 'spree_sample', '0.50.99', :path => '/Users/tomtom/workplace-antzoom/antzoom/SpreeCore/sample'
else
    ## PRODUCTION AntZoom version of own core spree gems personalize
    gem 'spree',        '0.50.99', :path => 'spree_SourceCodes'
    gem 'spree_api',    '0.50.99', :path => 'spree_SourceCodes/api'
    gem 'spree_auth',   '0.50.99', :path => 'spree_SourceCodes/auth'
    gem 'spree_core',   '0.50.99', :path => 'spree_SourceCodes/core'
    gem 'spree_dash',   '0.50.99', :path => 'spree_SourceCodes/dash'
    gem 'spree_promo',  '0.50.99', :path => 'spree_SourceCodes/promo'
    gem 'spree_sample', '0.50.99', :path => 'spree_SourceCodes/sample'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# For more details, see https://github.com/lwe/simple_enum#readme
gem 'simple_enum', :git => 'git://github.com/lwe/simple_enum.git'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
gem "antzoom_deal_content", :path => "vendor/extensions/antzoom_deal_content", :require => "antzoom_deal_content"
