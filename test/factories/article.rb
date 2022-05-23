# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    body { Faker::Lorem.paragraph }
    user_id { Faker::Number.between(from: 1, to: 10) }
  end
end
