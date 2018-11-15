class HomeController < ApplicationController
  def index
  end

 	def gotham
  end

  def arkham
    MailTown.create!(name: params[:name], email: params[:email])
  end
end
