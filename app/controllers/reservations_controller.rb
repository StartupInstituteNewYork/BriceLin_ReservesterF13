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
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.find_by(id: params[:id])
    if @reservation.destroy
      redirect_to @restaurant, notice: 'Reservation successfully deleted'
    else
      redirect_to @restaurant, notice: 'There was an error deleting the reservation'
    end
  end

private

	def reservation_params
		params.require(:reservation).permit(:email, :res_date, :message)
	end
end