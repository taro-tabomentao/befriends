FactoryBot.define do
  factory :event do
    title                   { Faker::Lorem.characters }
    country_id              { Faker::Number.between(from: 2, to: 62) }
    category_id             { Faker::Number.between(from: 2, to: 4) }
    start_time              { Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all) }
    end_time                { Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all) }
    online                  { Faker::Boolean.boolean }
    place                   { Faker::Address.city }
    content                 { Faker::Lorem.characters }
  end
end
