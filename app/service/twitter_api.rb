require 'dotenv'
require 'twitter'
Dotenv.load


# quelques lignes qui enregistrent les clés d'APIs
class Twitter_api

  def initialize(tab_user)
    @tab_user=tab_user
  end

  def add_a_twit
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
      config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
    end
    tab=@tab_user[0..3]
    tab.each do |user|
      if user.acc_twitter
      client.update('Coucou, @'+user.acc_twitter+' rejoins notre grande école du numérique, The Hacking project.c\'est gratuit ' )
      end
    end
  end
  
  def add_a_twit_djeun
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
      config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
    end
    tab=@tab_user[0..3]
    tab.each do |user|
      if user.acc_twitter
        client.update('Yo, @'+user.acc_twitter+', tu tes toujours demandé comment chemar Instagram, Facebook. Inscrit toi dans notre grande école du numérique. Aucun soucis on part de zéro pour
          pas que tu sois paumé. Faits pas ta lopette rejoins nous.')     
      end
    end
    
  end

    def add_a_twit_town
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['TWITTER_API_KEY']
        config.consumer_secret     = ENV['TWITTER_API_SECRET']
        config.access_token        = ENV['TWITTER_ACCES_TOKEN_KEY']
        config.access_token_secret = ENV['TWITTER_ACCES_SECRET_TOKEN_KEY']
      end
      tab=@tab_user[0..3]
    tab.each do |user|
      if user.acc_twitter
        client.update('Le codage t\'appelle, @'+user.acc_twitter+',alors deviens un super en rejoignant notre grande école du numérique,
          The Hacking project.Pas besoin d\'être aussi riche que Waynes c\'est gratuit ')   
      end
    end
    
  end
end
