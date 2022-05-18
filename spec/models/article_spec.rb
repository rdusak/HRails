require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'creation' do
    it 'can be created' do    
      usr = User.create(username: 'testuser',
                        email: 'test@test.com',
                        firstname: 'testuser',
                        lastname: 'testuser', 
                        password: 'password',
                        password_confirmation: 'password')
      article = Article.create(title: 'testarticle',
                               body: 'test test test',
                               user_id: usr.id)
      
      expect(article).to be_valid
    end
  end
end
