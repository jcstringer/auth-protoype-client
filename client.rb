require 'sinatra'
require 'oauth2'
require "json"

get '/profile' do
	client = OAuth2::Client.new(:site => 'http://0.0.0.0:3000')
	access_token = OAuth2::AccessToken.from_hash(client, {'access_token' => 12345})
	@user = JSON(acccess_token.get("/profile").body)
end