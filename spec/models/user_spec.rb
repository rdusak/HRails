require 'rails_helper'

RSpec.describe User, type: :model do
  # `include` done here in order to avoid 
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'creation' do
    it 'can be created' do    
      user = create(:user)
      
      expect(user).to be_valid

    end
  end
end
