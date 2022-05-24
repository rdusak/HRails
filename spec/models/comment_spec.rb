# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods

  describe 'creation' do
    let(:usr) { create(:user) }
    let(:art) { create(:article, user_id: usr.id) }
    let(:comment) { create(:comment, article_id: art.id, user_id: usr.id) }

    it 'can be created' do
      expect(comment).to be_valid
    end
  end
end
