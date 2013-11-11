class ReservationsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@reservation = @restaurant.reservations.build(reservation_params)

  	if @reservation.save
  		redirect_to :back, notice: "Reservation made!"
  	else
  		redirect_to :back, notice: "Error creating reservation!"
  	end
  end

  def destroy
  end

private

	def reservation_params
		params.require(:reservation).permit(:email, :res_date, :message)
	end
end