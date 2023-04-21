FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "user-#{i}+#{rand(1..10)}@email.com" }
    password { "rrp123" }
    password_confirmation { "rrp123" }
    confirmed_at { Time.zone.now - 5.minutes }
  end
end
