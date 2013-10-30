# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create!([
	{
		name: 'Pizza Place',
		description: 'Fresh hot cheesy pizza!',
		address: '123 Street',
		phone_number: 123_123_1234
	},
	{
		name: 'Big Burger',
		description: 'Big burgers!',
		address: '124 Street',
		phone_number: 123_133_1234
	},
	{
		name: 'Chillin\' Chilis',
		description: 'Fresh chili!',
		address: '1243 Street',
		phone_number: 113_123_1234
	},
	{
		name: 'Super Soup',
		description: 'Fresh soup!',
		address: '123 Ave',
		phone_number: 323_123_1234
	},
	{
		name: 'Luscious Lasagna',
		description: 'Fresh lasagna!',
		address: '423 Street',
		phone_number: 183_123_1234
	},
	{
		name: 'Slurpin\' Spaghetti',
		description: 'Fresh spaghetti!',
		address: '1243 Street',
		phone_number: 193_123_1234
	}
])