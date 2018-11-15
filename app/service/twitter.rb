require 'dotenv'
require 'twitter'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_API_KEY']
  config.consumer_secret     = ENV['TWITTER_API_SECRET']
  config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
  config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
end

# quelques lignes qui enregistrent les clés d'APIs
class Twitter
  def add_a_twit (item)
    
    client.update('@sassani134 test tweet')
  end
end