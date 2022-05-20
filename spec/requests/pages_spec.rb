# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PagesRouting', type: :routing do
  describe "GET '/'" do
    it 'routes / to the pages controller' do
      expect(get('/')).to route_to('pages#index')
    end
  end

  describe "GET 'pages/about'" do
    it 'routes /about to the pages controller' do
      expect(get('/pages/about')).to route_to('pages#about')
    end
  end

  describe "GET 'pages/contact'" do
    it 'routes /about to the pages controller' do
      expect(get('/pages/contact')).to route_to('pages#contact')
    end
  end
end

RSpec.describe 'PagesController', type: :controller do
  
  describe "GET index" do
    it "has a 200 status code" do
      @controller = PagesController.new
      get :index
      expect(response.status).to eq(200)
    end
  end
end