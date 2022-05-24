# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Articles', type: :controller do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods

  let(:usr) { create(:user) }

  describe 'create' do
    it 'successfully creates a new article' do
      sign_in usr
      create(:article, user_id: usr.id, body: 'test test test')
      expect(Article.last.body).to eq('test test test')
    end
  end
end

RSpec.describe 'ArticlesController', type: :controller do
  let(:usr) { create(:user) }
  let(:valid_params) do
    { article: { title: Faker::Book.title, body: Faker::Lorem.paragraph } }
  end

  let(:invalid_params) do
    { article: { title: '', body: '' } }
  end

  before :each do
    @controller = ArticlesController.new
  end

  describe 'GET index' do
    it 'has a 302 status code' do
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe 'GET new' do
    it 'has a 302 status code' do
      get :new
      expect(response.status).to eq(302)
    end
  end

  include FactoryBot::Syntax::Methods
  describe 'with valid params' do
    it 'creates a new article' do
      sign_in usr
      expect do
        # either this
        # art = create(:article, user_id: usr.id)
        # or this
        post :create,
             params: valid_params
      end.to change { Article.count }
    end
  end

  describe 'with invalid params' do
    it 'fails to create a new article' do
      sign_in usr
      expect do
        # either this
        # art = create(:article, user_id: -1, title: '', body: '')
        # or this
        post :create,
             params: invalid_params
      end.not_to change { Article.count }
    end
  end
end
