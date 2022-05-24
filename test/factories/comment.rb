# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    article_id { Faker::Number.between(from: 1, to: 10) }
    body { Faker::Lorem.paragraph }
    user_id { Faker::Number.between(from: 1, to: 10) }
  end
end
