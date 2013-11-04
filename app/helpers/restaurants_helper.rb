module RestaurantsHelper
	def find_on_google_map(restaurant)
		"http://maps.google.com/maps/api/staticmap?visual_refresh=true&size=450x300&sensor=false&zoom=16&markers=#{restaurant.address}"
	end
end
