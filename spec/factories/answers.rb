FactoryBot.define do
  factory :answer do
    content                  { Faker::Lorem.characters }
    association :user
    association :question
  end
end
