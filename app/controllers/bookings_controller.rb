class BookingsController < ApplicationController
#/bookings
#/cleaners/1/bookings
  def create
    @booking = Booking.new(date: booking_params[:date])
    @booking.customer = current_user
    @booking.cleaner = User.find(params[:user_id])
    if @booking.save
      redirect_to :root
    else
      redirect_back(fallback_location: fallback_location)
    end
  end

  private

  def booking_params
     params.require(:booking).permit(:date, :payment_method)
  end
end
