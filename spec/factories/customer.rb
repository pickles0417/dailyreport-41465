FactoryBot.define do
  factory :customer do
    association :user

    customer_name { Faker::Name.name}
    category_id {Faker::Number.between(from: 1, to: 6)}
    contract_id {Faker::Number.between(from: 1, to: 2)}
    postcode {'123-4567'}
    prefecture_id { Faker::Number.between(from: 1, to: 47) }
    city {'テスト市'}
    block {'1-1'}
    phone_number{'09000980987'}
    capacity {'10'}
  end
end