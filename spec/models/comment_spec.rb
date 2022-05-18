require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'creation' do
    it 'can be created' do    7
      usr =  User.create(username: 'testuser',
                         email: 'test@test.com',
                         firstname: 'testuser',
                         lastname: 'testuser', 
                         password: 'password',
                         password_confirmation: 'password')
      art = Article.create(title: 'testarticle',
                           body: 'test test test',
                           user_id: 1)
      comment = Comment.create(article_id: art.id,
                               body: 'test test test',
                               user_id: usr.id)
      
      expect(comment).to be_valid
    end
  end
end
