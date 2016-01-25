FactoryGirl.define do
  factory :user do
    f_password = FFaker::Lorem.words(2).join

    sequence :email do |n|
      "user#{n}@example.com"
    end

    password { f_password }
    password_confirmation { f_password }
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
  end
end
