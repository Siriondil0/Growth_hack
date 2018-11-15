desc "This task is called by the Heroku scheduler add-on"
task :send_twit => :environment do
  puts "sending twit..."
  stand = Itemstandart.where(id: Itemstandart.pluck(:id).sample(3))
  jeun = Itemdjeun.where(id: Itemdjeun.pluck(:id).sample(3))
  town = Itemtown.where(id: Itemtown.pluck(:id).sample(3))
  Twitter_api.new(stand).add_a_twit
  Twitter_api.new(jeun).add_a_twit_djeun
  Twitter_api.new(town).add_a_twit_town
  puts "done"
end

task :send_mail => :environment do
  puts "sending mails..."
  stand = MailStandart.where(id: MailStandart.pluck(:id).sample(3))
  jeun = MailDjeun.where(id: MailDjeun.pluck(:id).sample(3))
  town = MailTown.where(id: MailTown.pluck(:id).sample(3))
  Email.new(stand).format_emails
  Email.new(jeun).format_emails_djeun
  Email.new(town).format_emails_town
  puts "done"
end