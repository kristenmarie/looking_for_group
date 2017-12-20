FactoryBot.define do
  factory :group do
    name Faker::LordOfTheRings.character
    game_title Faker::LordOfTheRings.character
    players_needed Faker::Number.between(1,10)
    location Faker::LordOfTheRings.location
    play_location Faker::LordOfTheRings.location
    description Faker::Hobbit.quote
    meetup_date Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
    meetup_time Faker::Time.between(DateTime.now - 1, DateTime.now)
  end

  factory :user do
    username Faker::LordOfTheRings.character
    email 'test@test.com'
    password '123456'
    password_confirmation '123456'
  end

  factory :membership do
    user_id Faker::Number.between(1,100)
    group_id Faker::Number.between(1,100)
  end
end
