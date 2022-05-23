# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contact, type: :model do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'creation' do
    it 'can be created' do
      contact = create(:contact)
      expect(contact).to be_valid
    end
  end
end
