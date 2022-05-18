require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  describe 'create' do
    it 'successfully creates a new contact' do

      contact = Contact.create(name: 'testcontact',
                               email: 'testmail@test.com',
                               message: 'hello world')

      
      expect(Contact.last.name).to eq('testcontact')
      
    end
  end
end
