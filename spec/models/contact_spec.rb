require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'creation' do
    it 'can be created' do    
      contact = Contact.create(name: 'testcontact',
                               email: 'testmail@test.com',
                               message: 'hello world')
      
      expect(contact).to be_valid
    end
  end
end
