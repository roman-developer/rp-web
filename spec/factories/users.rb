FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "user-#{i}+#{rand(1..10)}@email.com" }
    password { "rp1234" }
    password_confirmation { "rp1234" }
    confirmed_at { Time.zone.now - 5.minutes }
  end
end
