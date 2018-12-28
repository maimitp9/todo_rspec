FactoryBot.define do
  factory :item do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraphs(2)
    association :list, factory: :list
  end
end
