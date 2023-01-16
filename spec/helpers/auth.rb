# frozen_string_literal: true
require 'pry'
require 'base64'
class Auth
  URL = 'https://api.sandbox.ebay.com/identity/v1/oauth2/token'

  def log_in(client_id,client_secret)
    auth_code = "Basic " + Base64.strict_encode64("#{client_id}:#{client_secret}")
    puts auth_code;
    RestClient.post("#{URL}",{:grant_type => "client_credentials",
                         :scope => "https://api.sandbox.ebay.com/buy/browse/v1"},
                   { :Authorization => auth_code, :content_type => "application/x-www-form-urlencoded"} )
  end

end
