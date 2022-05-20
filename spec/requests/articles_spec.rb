require 'rails_helper'

RSpec.describe "Articles", type: :controller do

  describe 'create' do
    it 'successfully creates a new article' do

      usr = User.create(username: 'testuser',
                        email: 'test@test.com',
                        firstname: 'testuser',
                        lastname: 'testuser', 
                        password: 'password',
                        password_confirmation: 'password')

      article = Article.create(title: 'testarticle',
                               body: 'test test test',
                               user_id: usr.id)
      
      expect(Article.last.body).to eq('test test test')
      
    end
  end
end
