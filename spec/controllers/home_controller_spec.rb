require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  render_views

  context "when get #index" do
    it 'returns a success response' do 
	    get :index
	    expect(response).to be_successful
	  end
  end

  context "when get #classic " do
    it 'returns a success response' do 
	    get :classic
      expect(response).to be_successful
      expect(response).to render_template(partial: 'shared/_header')
      expect(response).to render_template(partial: 'shared/_resume')
      expect(response).to render_template(partial: 'shared/_programme')
	  end
  end

  context "when get #griezmann " do
    it 'returns a success response' do 
	    get :griezmann
      expect(response).to be_successful
      expect(response).to render_template(partial: 'shared/_header_griezmann')
      expect(response).to render_template(partial: '_resume-griezmann')
      expect(response).to render_template(partial: 'shared/_programme_griezmann')
	  end
  end

  context "when get #gotham " do
    it 'returns a success response' do 
      get :gotham
      expect(response).to be_successful
      expect(response).to render_template(partial: 'shared/_header_gotham')
      expect(response).to render_template(partial: 'shared/_resume_gotham')
      expect(response).to render_template(partial: 'shared/_programme_gotham')
	  end
  end

  context "when get #gotham " do
    it 'returns a success response' do 
      get :gotham
      expect(response).to be_successful
      expect(response.body).to include "24 boulevard du Joker"
      expect(response.body).to include "Pingouin"
	  end
  end

  context "when post #modern " do
    it 'create a email if correct parameters' do 
      post :modern , params: {"email"=>'toto@mail.com',"name"=> "01234" }
      expect(response).to render_template("home/successful.html.erb")
    end
    
    it 'render an error if email already in db' do
      mail = MailStandart.create!(name: "01234", email: 'toto@mail.com')
      post :modern , params: {"email"=>'toto@mail.com',"name"=> "01234" }
      expect(response).to render_template("home/error")
    end
  end

  context "when post #benzema " do
    it 'returns a success response' do 
      post :benzema , params: {"email"=>'toto@mail.com',"name"=> "01234" }
      expect(response).to render_template("home/successful.html.erb")
    end

    it 'render an error if email already in db' do
      mail = MailDjeun.create!(name: "01234", email: 'toto@mail.com')
      post :benzema , params: {"email"=>'toto@mail.com',"name"=> "01234" }
      expect(response).to render_template("home/error")
    end
  end

  context "when post #arkham " do
    it 'returns a success response' do 
      post :arkham , params: {"email"=>'toto@mail.com',"name"=> "01234" }
      expect(response).to render_template("home/successful.html.erb")
    end
    
    it 'render an error if email already in db' do
      mail = MailTown.create!(name: "01234", email: 'toto@mail.com')
      post :arkham , params: {"email"=>'toto@mail.com',"name"=> "01234" }
      expect(response).to render_template("home/error")
    end
  end
end
