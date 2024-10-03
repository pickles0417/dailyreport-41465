FactoryBot.define do
  factory :daily do
    association :user
    association :customer

    meet_year {'2024'}
    meet_month {'1'}
    meet_day {'1'}
    manager_name {'山田'}
    meal_id { Faker::Number.between(from: 1, to: 8)}
    text {'契約書'}
  end
end

