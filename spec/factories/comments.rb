FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.characters }
    association :user
    association :article
  end
end
