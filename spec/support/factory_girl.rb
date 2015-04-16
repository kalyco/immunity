require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end
end

FactoryGirl.define do
	factory :system do
		user
	end
end

FactoryGirl.define do
  factory :stage do
    system
    cytokines 0
    phagocytes 0
    macromolecules 0
  end
end
