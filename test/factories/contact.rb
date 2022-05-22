# frozen_string_literal: true

FactoryBot.define do
    factory :contact do
      name { Faker::Name.name_with_middle }
      message { Faker::Lorem.paragraph }
      email { Faker::Internet.email }
    end
end