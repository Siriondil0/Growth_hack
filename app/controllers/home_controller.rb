class HomeController < ApplicationController
  def index
  end

  def gotham
  end

  def classic
  end

  def griezmann
  end

  def modern
    mail = MailStandart.find_by(email: params[:email].downcase).nil?
    if mail
      mail = MailStandart.create!(name: params[:name], email: params[:email])
      render "successful.html.erb"
    else 
      render :error
    end
  end

  def arkham
    mail = MailTown.find_by(email: params[:email].downcase).nil?
    if mail
      mail = MailTown.create!(name: params[:name], email: params[:email])
      render "successful.html.erb"
    else 
      render :error
    end
  end

  def benzema
    mail = MailDjeun.find_by(email: params[:email].downcase).nil?
    if mail
      mail = MailDjeun.create!(name: params[:name], email: params[:email])
      render "successful.html.erb"
    else 
      render :error
    end
  end
end
