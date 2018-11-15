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
class Twitter_api
  
  def add_a_twit
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
      config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
    end
    client.update('Coucou rejoins notre grande école du numérique, The Hacking project.c\'est gratuit ' )

  end
  
  def add_a_twit_djeun
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
      config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
    end
    client.update('Yo, tu tes toujours demandé comment chemar Instagram, Facebook. Inscrit toi dans notre grande école du numérique. Aucun soucis on part de zéro pour
    	 pas que tu sois paumé. Faits pas ta lopette rejoins nous.')
  end

    def add_a_twit_town
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['TWITTER_API_KEY']
        config.consumer_secret     = ENV['TWITTER_API_SECRET']
        config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
        config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
      end
    client.update('Le codage t\'apelle, deviens un super en rejoignant notre grande école du numérique,
    	 The Hacking project.Pas besoin d\'être aussi riche que Waynes c\'est gratuit ')
  end
end
