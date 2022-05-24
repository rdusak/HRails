# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end

RSpec.describe 'Registrations', type: :controller do
  describe 'new user registration' do
    before :each do
      request.env['devise.mapping'] = Devise.mappings[:user]
      @controller = RegistrationsController.new
    end
    let(:valid_attributes) do
      { fistname: 'user',
        lastname: 'user',
        email: 'user@user.com',
        username: 'user',
        password: 'useruser',
        password_confirmation: 'useruser' }
    end
    context 'with valid params' do
      it 'creates a new User' do
        expect do
          post :create, params: { user: valid_attributes }
        end.to change(User, :count).by(1)
      end
    end
  end
end
