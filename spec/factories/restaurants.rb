require 'faker'

FactoryGirl.define do
	factory :restaurant do |f|
		f.name { Faker::Name.name }
		f.address { Faker::Address.street_address }
	end
end