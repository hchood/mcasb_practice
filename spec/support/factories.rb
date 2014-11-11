# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "Marlon"
    last_name "Brando"
    sequence(:username) { |n| "thegodfather#{n}" }
    sequence(:email) { |n| "brandothe#{n}@example.com"}
    api_key { self.generate_api_key }
    password "secret_password"
    password_confirmation "secret_password"
  end

  factory :exercise do
    sequence(:name) { |n| "#{n} repetition" }
    description "Listen to your partner and repeat what they say."
  end

  factory :workout do
    sequence(:name) { |n| "#{1} Chekhov workout"}
    description "Basic warm up and improvisation exercises"
  end

  factory :workout_exercise do
    workout
    exercise
    exercise_number { workout.exercises.count + 1 }
    duration_in_min 5
  end
end
