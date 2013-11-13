class ReservationMailer < ActionMailer::Base
  default from: "Reservester"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.reservation_notification.subject
  #
  def reservation_notification(reservation)
    @reservation = reservation
    @owner = @reservation.restaurant.owner
    mail to: @owner.email, subject: "New reservation made at #{@reservation.restaurant.name}!"
  end
end
