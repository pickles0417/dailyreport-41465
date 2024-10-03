FactoryBot.define do
  factory :user do
    last_name             {'山田'}
    first_name            {'太郎'}
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    office_name           {'テスト事業所'}
    birthday              {'2022-02-02'}
  end
end