require 'dotenv'
require 'gmail'
Dotenv.load

class Email

  def initialize (email_array)
    @email_tab = email_array
  end

  def format_emails
    
    @email_tab.each do |mail| # on va chercher les infos de chaque ligne dans le csv (sans la première ligne)

      gmail = Gmail.connect!(ENV["GMAIL_USERNAME"], ENV["GMAIL_PSW"]) #on se connecte à notre compte

      email = gmail.compose do #on fait un compose pour préparer l'email 
        to "#{mail}" # on l'envoie à  chaque email de la colonne 2 du csv   
        subject "THP - L'école de programmation gratuite ! "
        body  "Bonjour je m'appelle Jhon , je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. 

La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. 
Le projet du jour est d'envoyer (avec du codage) des emails. Déjà 500 personnes sont passées par The Hacking Project.  


            
Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80."
      end
    email.charset = 'utf-8' # pour enlever les carractères spéciaux du csv.
    email.deliver  # on envoie les mails
    gmail.logout #à la fin on se déconnecte 
    end
  end

def format_emails_djeun
    
    @email_tab.each do |mail| # on va chercher les infos de chaque ligne dans le csv (sans la première ligne)

      gmail = Gmail.connect!(ENV["GMAIL_USERNAME"], ENV["GMAIL_PSW"]) #on se connecte à notre compte

      email = gmail.compose do #on fait un compose pour préparer l'email 
        to "#{mail}" # on l'envoie à  chaque email de la colonne 2 du csv   
        subject "THP - L'école de programmation gratuite ! "
        body  "Bonjour je m'appelle Jhon, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. 

La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. 
Le projet du jour est d'envoyer (avec du codage) des emails aux future diplomé pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous. Déjà 500 personnes sont passées par The Hacking Project. 


            
Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80."
      end
    email.charset = 'utf-8' # pour enlever les carractères spéciaux du csv.
    email.deliver  # on envoie les mails
    gmail.logout #à la fin on se déconnecte 
    end
  end

def format_emails_town
    
    @email_tab.each do |mail| # on va chercher les infos de chaque ligne dans le csv (sans la première ligne)

      gmail = Gmail.connect!(ENV["GMAIL_USERNAME"], ENV["GMAIL_PSW"]) #on se connecte à notre compte

      email = gmail.compose do #on fait un compose pour préparer l'email 
        to "#{mail}" # on l'envoie à  chaque email de la colonne 2 du csv   
        subject "THP - L'école de programmation gratuite ! "
        body  "Bonjour je m'appelle Jhon, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. 

La pédagogie de notre école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. 
Le projet du jour est d'envoyer (avec du codage) des emails aux future diplomé pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous. Déjà 500 personnes sont passées par The Hacking Project. 


            
Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80."
      end
    email.charset = 'utf-8' # pour enlever les carractères spéciaux du csv.
    email.deliver  # on envoie les mails
    gmail.logout #à la fin on se déconnecte 
    end
  end

  def lauch_emails
    # on compte le nomdre d'emails dans le fichier CSV
    mail_count = @email_tab.count
    puts "Voulez êtes sur le point d'envoyer #{mail_count} mails, on y va ? (y/n)"
    answer = gets.chomp
    if answer == "y"
      format_emails #lance la méthode
    else
      puts "Annulé"
    end
  end
end