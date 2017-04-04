require 'faker'

FactoryGirl.define do
  factory :user do
    first_name { Faker::Name }
    last_name { Faker::Name }
    username { Faker::Name }
    email { Faker::Internet::email }
    password "password"
  end
end
