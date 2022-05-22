require 'rails_helper'

RSpec.describe "Articles", type: :controller do
  # `include` done here in order to avoid 
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'create' do
    it 'successfully creates a new article' do
      usr = create(:user)
      article = create(:article, user_id: usr.id, body: 'test test test')
      expect(Article.last.body).to eq('test test test')
    end
  end
end

RSpec.describe 'ArticlesController', type: :controller do
  
  describe "GET index" do
    it "has a 302 status code" do
      @controller = ArticlesController.new
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe "GET new" do
    it "has a 302 status code" do
      @controller = ArticlesController.new
      get :new
      expect(response.status).to eq(302)
    end
  end
end