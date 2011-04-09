#!/Users/tomtom/.rvm/rubies/default/bin/ruby 
#####################################################################
# 
#   For more details about rest-client, refer here
#   https://github.com/archiloque/rest-client
#
#   How to run this script:
#   ./restJ_Features.rb [produsers|prodorders|testusers|testorders]
#
######################################################################

require 'rubygems'
require 'rest_client'
require 'json'

ARGV.each do|myParameter|

  puts "Argument: [#{myParameter}]"

  case myParameter
     when "produsers" then 
           response = RestClient.get "https://VZAx3xbIyJ2JfY2eRac8@ants.heroku.com/api/users.json", {:accept => :json}
     when "prodorders" then 
           response = RestClient.get "https://VZAx3xbIyJ2JfY2eRac8@ants.heroku.com/api/orders.json", {:accept => :json}

     # curl -X POST -u VZAx3xbIyJ2JfY2eRac8:x -d '{"user":{"email":"tomtom@gmail.com","password":"password","password_confirmation":"password"},"commit":"Create"}' http://ants.heroku.com/api/users.json -H "Content-Type:application/json"
     when "prod_createuser" then
           response =RestClient.post 'http://VZAx3xbIyJ2JfY2eRac8@ants.heroku.com/api/users.json', :commit => 'Create',
                                                                                                   :user   => {  :email                 => 'tom@gmail.com',
                                                                                                                 :password              => 'dog12345678', 
                                                                                                                 :password_confirmation => 'dog12345678'
                                                                                                    }

     when "test_showallusers" then
           response = RestClient.get "http://Sr7q3uUpxuxLhsB9Sivx@localhost:8888/api/users.json", {:accept => :json}
     when "test_showauser" then 
            response = RestClient.get "http://Sr7q3uUpxuxLhsB9Sivx@localhost:8888/api/users/50.json", {:accept => :json}

     when "test_loginuser" then
            response = RestClient.post 'http://Sr7q3uUpxuxLhsB9Sivx@localhost:8888/api/login.json', :commit => 'Log In',
                                                                                                    :authenticity_token => 'W74fV0OOr4a764ms//SYMzqtuKnZ7u0P3oidJ3kGGVI=',
                                                                                                    :user   => { 
                                                                                                                 :email       => 'updateburden@dog.com', 
                                                                                                                 :password    => 'dog321', 
                                                                                                                 :remember_me => 0
                                                                                                     }

    # curl -X POST -u G-pg8mRY4D6He8nfcCBt:x -d '{"user":{"email":"helpisontheway@hotmail.com","password":"password","password_confirmation":"password"},"commit":"Create"}' http://localhost:3000/api/users.json -H "Content-Type:application/json"
     when "test_createuser" then
            response =RestClient.post 'http://Sr7q3uUpxuxLhsB9Sivx@localhost:8888/api/users.json', :commit => 'Create',
                                                                                                   :user   => { 
                                                                                                        :email                 => 'twoxxxxburden@dog.com', 
                                                                                                        :password              => 'dog123', 
                                                                                                        :password_confirmation => 'dog123'
                                                                                                   }
     when "test_updateuser" then 
           response =RestClient.put 'http://Sr7q3uUpxuxLhsB9Sivx@localhost:8888/api/users/25.json',  :user  => { 
                                                                                                             :email                 => 'updateburden@dog.com', 
                                                                                                             :password              => 'dog321', 
                                                                                                             :password_confirmation => 'dog321'
                                                                                                   }
     when "test_loginuser" then
            response =RestClient.post 'http://Sr7q3uUpxuxLhsB9Sivx@localhost:8888/api/users/3.json', :email => 'one@dog.com', :password => 'password123', :password_confirmation => 'password123'
     else 
            print "Pass in either produsers, prodorders, testusers, testorders\n"
            print "Example: ./fetchOrder.rb produsers|prodorders|testusers|testorders\n"
            exit
     end

  ### Generate REST token 
  # curl -X PUT -u G-pg8mRY4D6He8nfcCBt:x -d '{"utf8":"✓", "authenticity_token":"Vs7Cq3ErwmkKZfuSPZ3wQmncI6fbPjkogOFOKoMjc6E=", "id":"26"}' http://localhost:3000/admin/users/26/generate_api_key.json -H "Content-Type:application/json"

  ### Clear REST token
  # curl -X PUT -u G-pg8mRY4D6He8nfcCBt:x -d '{"utf8":"✓", "authenticity_token":"Vs7Cq3ErwmkKZfuSPZ3wQmncI6fbPjkogOFOKoMjc6E=", "id":"26"}' http://localhost:3000/admin/users/26/clear_api_key.json -H "Content-Type:application/json"

  ### CREATE: This one work Yippeee!
#curl -X POST -u G-pg8mRY4D6He8nfcCBt:x -d '{"utf8":"✓", "authenticity_token":"euUKjJppr5DERt7vag2ehW9xtIDTuLTbtLIHA909GJU=","user":{"email":"heartloveyou@hotmail.com","password":"password","password_confirmation":"password"},"commit":"Create"}' http://localhost:3000/api/users.json -H "Content-Type:application/json" 
#Resource created
  #

  ### UPDATE:
  # curl -X PUT -u G-pg8mRY4D6He8nfcCBt:x -d '{"user":{"email":"surrender@dog.com", "password":"password","password_confirmation":"password", "role":{"user":"1"}}}' http://localhost:3000/api/users/24.json -H "Content-Type:application/json"


#### UPDATE PARAM:
  # {"utf8"=>"✓", "authenticity_token"=>"nqSbjotEYeTo30pLa1LZvUt78+iir2bFcV1HzlLNank=", "user"=>{"email"=>"twoxxxxburden@dog.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]", "role"=>{"admin"=>"1"}}, "id"=>"25"}

  #
  #
 #Processing by UserRegistrationsController#create as HTML
 # Parameters: {"utf8"=>"✓", "authenticity_token"=>"euUKjJppr5DERt7vag2ehW9xtIDTuLTbtLIHA909GJU=", "user"=>{"email"=>"knowyou@hotmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Create"}
#<User id: nil, email: "knowyou@hotmail.com", encrypted_password: "84cc27e608fb7471ea78d0783949e8ece60cf880fb17c7f9591...", password_salt: "v2NLHbvMmKvthWACFTPw", remember_token: nil, created_at: nil, updated_at: nil, persistence_token: nil, reset_password_token: nil, perishable_token: nil, sign_in_count: 0, failed_attempts: 0, last_request_at: nil, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, login: nil, ship_address_id: nil, bill_address_id: nil, authentication_token: nil, unlock_token: nil, locked_at: nil, remember_created_at: nil>
#Redirected to http://localhost:3000/
#Completed 302 Found in 387ms
  #
  #

     ## RESULT RESPONSE ON REST SERVICE:
     print "\nJSON Amen:","\n"
     print "ResponseCodeResult: #{response.code}","\n"
     print "ResponseHeaderResult: #{response.headers}","\n"

     json = JSON.parse(response)

     print "\nJSON Results:","\n"
     print json, "\n\n"
     print "ResponseCodeResult: #{response.code}","\n"
     print "ResponseHeaderResult: #{response.headers}","\n"

end


# Another example for references:
# shipment_id = 'H21340867200'
# Comment: Get the shipment based on the shipment_id
# response = RestClient.get "https://staging.bigmama.ca/api/shipments/#{shipment_id}", {:accept => :json, 'X-SpreeAPIKey' => API_KEY}
# Comment: Update the tracking number for the shipment with shipment_id
# RestClient.put "https://staging.bigmama.ca/api/shipments/#{shipment_id}", {:shipment =>{:tracking => '5554444'}}, {:accept => :json, 'X-SpreeAPIKey' => API_KEY}
