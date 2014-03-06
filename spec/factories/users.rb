# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "dan#{n}@example.com"} 
    #//sequence allows us to iterate through the Factory and create different users.
  	#email "dan@example.com"
  	password "password"
    provider "twitter"
    sequence(:uid) { |n| "#{n}"}
  end
end