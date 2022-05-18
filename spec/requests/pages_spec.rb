# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :routing do
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
