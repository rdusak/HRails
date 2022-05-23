# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments', type: :controller do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'create' do
    it 'successfully creates a new comment' do
      usr = create(:user)
      art = create(:article, user_id: usr.id)
      comment = create(:comment, user_id: usr.id, article_id: art.id, body: 'hello world')
      expect(Comment.last.body).to eq('hello world')
    end
  end
end
