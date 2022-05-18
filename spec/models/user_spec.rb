require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do    
      user = User.create(username: 'testuser',
                         email: 'test@test.com',
                         firstname: 'testuser',
                         lastname: 'testuser', 
                         password: 'password',
                         password_confirmation: 'password')
      
      expect(user).to be_valid

    end
  end
end
