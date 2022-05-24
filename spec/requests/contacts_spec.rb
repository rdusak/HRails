# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Contacts', type: :request do
  # `include` done here in order to avoid
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'create' do
    it 'successfully creates a new contact' do
      create(:contact, name: 'testcontact')

      expect(Contact.last.name).to eq('testcontact')
    end
  end
end
