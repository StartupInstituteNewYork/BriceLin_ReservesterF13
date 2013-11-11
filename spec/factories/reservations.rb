# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    email "MyString"
    res_date "2013-11-08 20:05:38"
    message "MyText"
    restaurant_id 1
  end
end
