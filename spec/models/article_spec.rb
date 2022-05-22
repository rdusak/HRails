require 'rails_helper'

RSpec.describe Article, type: :model do
  # `include` done here in order to avoid 
  # namespace collision with RegistrationController
  include FactoryBot::Syntax::Methods
  describe 'creation' do
    it 'can be created' do    
      usr = create(:user)
      article = create(:article, user_id: usr.id)
      expect(article).to be_valid
    end
  end
end
