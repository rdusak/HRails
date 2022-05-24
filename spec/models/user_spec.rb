# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods

  describe 'creation' do
    let(:user) { create(:user) }
    it 'can be created' do
      expect(user).to be_valid
    end
  end
end
