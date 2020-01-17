FactoryBot.define do
  factory :user do
    first_name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::String.random(length: [0, 10])}
  end
end
