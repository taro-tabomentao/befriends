FactoryBot.define do
  factory :article do
    title                   { Faker::Lorem.characters }
    country_id              { Faker::Number.between(from: 2, to: 62) }
    category_id             { Faker::Number.between(from: 2, to: 4) }
    content                 { Faker::Lorem.characters }
    association :user
  end
end
