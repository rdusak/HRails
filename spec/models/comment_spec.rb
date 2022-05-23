# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'creation' do
    it 'can be created' do
      usr = create(:user)
      art = create(:article, user_id: usr.id)
      comment = create(:comment, article_id: art.id, user_id: usr.id)

      expect(comment).to be_valid
    end
  end
end
