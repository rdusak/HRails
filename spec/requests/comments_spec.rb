require 'rails_helper'

RSpec.describe "Comments", type: :controller do

  before(:each) do
    @usr = User.create(username: 'testuser',
                        email: 'test@test.com',
                        firstname: 'testuser',
                        lastname: 'testuser', 
                        password: 'password',
                        password_confirmation: 'password')

    @art = Article.create(title: 'testarticle',
                           body: 'test test test',
                           user_id: @usr.id)
  end

  describe 'create' do
    it 'successfully creates a new comment' do
      comment = Comment.create(article_id: @art.id,
                               body: 'hello world',
                               user_id: @usr.id)
      expect(Comment.last.body).to eq('hello world')
    end
  end
end
