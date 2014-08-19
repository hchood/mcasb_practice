# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "Marlon"
    last_name "Brando"
    sequence(:username) { |n| "thegodfather#{n}" }
    sequence(:email) { |n| "brandothe#{n}@example.com"}
    password "secret_password"
    password_confirmation "secret_password"
  end
end
