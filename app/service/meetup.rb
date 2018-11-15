require 'dotenv'
require 'meetup_client'
Dotenv.load

MeetupClient.configure do |config|
  config.api_key = ENV['MEETUP_API_KEY']
end

class Meetup
  def initialize
  end
  def comment_stand
    params = { category: '1',
      city: 'London',
      country: 'GB',
      status: 'upcoming',
      format: 'json',
      page: '50'}
    meetup_api = MeetupApi.new
    events = meetup_api.open_events(params)
    puts events
  end
  def comment_djeuns
  
  end
  def comment_town
  
  end
end