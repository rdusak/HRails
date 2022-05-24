# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods

  describe 'creation' do
    let(:usr) { create(:user) }
    let(:article) { create(:article, user_id: usr.id) }

    it 'can be created' do
      expect(article).to be_valid
    end
  end
end
