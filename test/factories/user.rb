# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { Faker::Name.name }
    firstname { Faker::Name.name }
    lastname { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'welcome' }
    password_confirmation { 'welcome' }
  end
end
