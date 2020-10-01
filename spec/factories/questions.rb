FactoryBot.define do
  factory :question do
    title                   { Faker::Lorem.characters }
    country_id              { Faker::Number.between(from: 2, to: 62) }
    category_id             { Faker::Number.between(from: 2, to: 4) }
    status_id               { Faker::Number.between(from: 2, to: 3) }
    text                    { Faker::Lorem.characters }
    association :user
  end
end
