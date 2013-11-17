class OwnersController < ApplicationController
  def dashboard
  	@restaurants = current_owner.restaurants
  end
end
