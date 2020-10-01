FactoryBot.define do
  factory :user do
    full_name                   { Faker::Name.name }
    email                       { Faker::Internet.free_email }
    password                    { Faker::Internet.password(min_length: 6, mix_case: true) }
    password_confirmation       { password}
    gender_id                   { Faker::Number.between(from: 2, to: 4) }
    country_id                  { Faker::Number.between(from: 2, to: 62) }
    city                        { Faker::Address.city }
    language                    { 'Japanese, English' }
  end
end
